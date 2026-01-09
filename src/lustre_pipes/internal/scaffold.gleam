import gleam/list
import lustre/attribute
import lustre/element
import lustre/element/keyed

// TYPES -----------------------------------------------------------------------

// `last_attr` phantom types

@internal
pub type NoAttrs

@internal
pub type Event

@internal
pub type AttributeOrProperty

@internal
pub type Unknown

// Scaffold

@internal
pub opaque type Scaffold(msg) {
  Regular(tag: String, attrs: List(attribute.Attribute(msg)))
  Namespaced(
    tag: String,
    attrs: List(attribute.Attribute(msg)),
    namespace: String,
  )
  Custom(
    builder: fn(List(attribute.Attribute(msg)), List(element.Element(msg))) ->
      element.Element(msg),
    attrs: List(attribute.Attribute(msg)),
  )
}

@internal
pub type ChildlessScaffold(msg) =
  Scaffold(msg)

@internal
pub type TextContentScaffold(msg) =
  Scaffold(msg)

// Creation

@internal
pub fn regular(tag: String) -> Scaffold(msg) {
  Regular(tag:, attrs: [])
}

@internal
pub fn from(
  builder: fn(List(attribute.Attribute(msg)), List(element.Element(msg))) ->
    element.Element(msg),
) -> Scaffold(msg) {
  Custom(builder, [])
}

@internal
pub fn intercept(
  scaffold: Scaffold(msg),
  builder: fn(
    String,
    List(attribute.Attribute(msg)),
    List(element.Element(msg)),
  ) ->
    element.Element(msg),
) -> Scaffold(msg) {
  case scaffold {
    Regular(tag:, attrs:) | Namespaced(tag:, attrs:, ..) ->
      Custom(fn(attrs, children) { builder(tag, attrs, children) }, attrs)
    Custom(..) -> scaffold
  }
}

@internal
pub fn namespaced(namespace namespace: String, tag tag: String) -> Scaffold(msg) {
  Namespaced(namespace:, tag:, attrs: [])
}

// Graduation

pub fn to_element(scaffold: Scaffold(msg), children: List(element.Element(msg))) {
  case scaffold {
    Namespaced(namespace:, tag:, attrs:) ->
      element.namespaced(namespace, tag, attrs, children)
    Regular(tag:, attrs:) -> element.element(tag, attrs, children)
    Custom(builder:, attrs:) -> builder(attrs, children)
  }
}

pub fn to_keyed_element(
  scaffold: Scaffold(msg),
  pairs: List(#(String, element.Element(msg))),
) {
  case scaffold {
    Namespaced(namespace:, tag:, attrs:) ->
      keyed.namespaced(namespace, tag, attrs, pairs)
    Regular(tag:, attrs:) -> keyed.element(tag, attrs, pairs)
    Custom(builder:, attrs:) -> builder(attrs, [keyed.fragment(pairs)])
  }
}

// Transformation

@internal
pub fn attach_attribute(
  scaffold: Scaffold(msg),
  event: attribute.Attribute(msg),
) -> Scaffold(msg) {
  case scaffold {
    Regular(attrs:, ..) as regular ->
      Regular(..regular, attrs: [event, ..attrs])
    Namespaced(attrs:, ..) as namespaced ->
      Namespaced(..namespaced, attrs: [event, ..attrs])
    Custom(attrs:, ..) as custom -> Custom(..custom, attrs: [event, ..attrs])
  }
}

@internal
pub fn modify_latest_attr(
  scaffold: Scaffold(msg),
  modifier: fn(attribute.Attribute(msg)) -> attribute.Attribute(msg),
) -> Scaffold(msg) {
  case scaffold {
    Regular(attrs: [latest_attr, ..] as attrs, ..) as regular ->
      Regular(..regular, attrs: [modifier(latest_attr), ..attrs])
    Namespaced(attrs: [latest_attr, ..] as attrs, ..) as namespaced ->
      Namespaced(..namespaced, attrs: [modifier(latest_attr), ..attrs])
    Custom(attrs: [latest_attr, ..] as attrs, ..) as custom ->
      Custom(..custom, attrs: [modifier(latest_attr), ..attrs])
    _ -> scaffold
  }
}

@internal
pub fn modify_latest_attr_with_many(
  scaffold: Scaffold(msg),
  modifiers: List(fn(attribute.Attribute(msg)) -> attribute.Attribute(msg)),
) -> Scaffold(msg) {
  case scaffold {
    Regular(attrs: [latest_attr, ..] as attrs, ..) as regular ->
      Regular(..regular, attrs: [
        list.fold(modifiers, latest_attr, fn(a, modifier) { modifier(a) }),
        ..attrs
      ])
    Namespaced(attrs: [latest_attr, ..] as attrs, ..) as namespaced ->
      Namespaced(..namespaced, attrs: [
        list.fold(modifiers, latest_attr, fn(a, modifier) { modifier(a) }),
        ..attrs
      ])
    Custom(attrs: [latest_attr, ..] as attrs, ..) as custom ->
      Custom(..custom, attrs: [
        list.fold(modifiers, latest_attr, fn(a, modifier) { modifier(a) }),
        ..attrs
      ])
    _ -> scaffold
  }
}
