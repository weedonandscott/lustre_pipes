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
pub opaque type Scaffold(msg, last_attr) {
  Regular(tag: String, attrs: List(attribute.Attribute(msg)))
  Namespaced(
    tag: String,
    attrs: List(attribute.Attribute(msg)),
    namespace: String,
  )
}

@internal
pub type ChildlessScaffold(msg, last_attr) =
  Scaffold(msg, last_attr)

@internal
pub type TextContentScaffold(msg, last_attr) =
  Scaffold(msg, last_attr)

// Creation

@internal
pub fn regular(tag: String) -> Scaffold(msg, NoAttrs) {
  Regular(tag:, attrs: [])
}

@internal
pub fn namespaced(
  namespace namespace: String,
  tag tag: String,
) -> Scaffold(msg, NoAttrs) {
  Namespaced(namespace:, tag:, attrs: [])
}

// Graduation

pub fn to_element(
  scaffold: Scaffold(msg, last_attr),
  children: List(element.Element(msg)),
) {
  case scaffold {
    Namespaced(namespace:, tag:, attrs:) ->
      element.namespaced(namespace, tag, attrs, children)
    Regular(tag:, attrs:) -> element.element(tag, attrs, children)
  }
}

pub fn to_keyed_element(
  scaffold: Scaffold(msg, last_attr),
  pairs: List(#(String, element.Element(msg))),
) {
  case scaffold {
    Namespaced(namespace:, tag:, attrs:) ->
      keyed.namespaced(namespace, tag, attrs, pairs)
    Regular(tag:, attrs:) -> keyed.element(tag, attrs, pairs)
  }
}

// Transformation

@internal
pub fn attach_event(
  scaffold: Scaffold(msg, last_attr),
  event: attribute.Attribute(msg),
) -> Scaffold(msg, Event) {
  case scaffold {
    Regular(attrs:, ..) as regular ->
      Regular(..regular, attrs: [event, ..attrs])
    Namespaced(attrs:, ..) as namespaced ->
      Namespaced(..namespaced, attrs: [event, ..attrs])
  }
}

@internal
pub fn attach_attribute(
  scaffold: Scaffold(msg, last_attr),
  event: attribute.Attribute(msg),
) -> Scaffold(msg, AttributeOrProperty) {
  case scaffold {
    Regular(attrs:, ..) as regular ->
      Regular(..regular, attrs: [event, ..attrs])
    Namespaced(attrs:, ..) as namespaced ->
      Namespaced(..namespaced, attrs: [event, ..attrs])
  }
}

@internal
pub fn attach_property(
  scaffold: Scaffold(msg, last_attr),
  event: attribute.Attribute(msg),
) -> Scaffold(msg, AttributeOrProperty) {
  case scaffold {
    Regular(attrs:, ..) as regular ->
      Regular(..regular, attrs: [event, ..attrs])
    Namespaced(attrs:, ..) as namespaced ->
      Namespaced(..namespaced, attrs: [event, ..attrs])
  }
}

@internal
pub fn attach_unknown(
  scaffold: Scaffold(msg, last_attr),
  event: attribute.Attribute(msg),
) -> Scaffold(msg, Unknown) {
  case scaffold {
    Regular(attrs:, ..) as regular ->
      Regular(..regular, attrs: [event, ..attrs])
    Namespaced(attrs:, ..) as namespaced ->
      Namespaced(..namespaced, attrs: [event, ..attrs])
  }
}

@internal
pub fn modify_latest_attr(
  scaffold: Scaffold(msg, last_attr),
  modifier: fn(attribute.Attribute(msg)) -> attribute.Attribute(msg),
) -> Scaffold(msg, last_attr) {
  case scaffold {
    Regular(attrs: [latest_attr] as attrs, ..) as regular ->
      Regular(..regular, attrs: [modifier(latest_attr), ..attrs])
    Namespaced(attrs: [latest_attr] as attrs, ..) as regular ->
      Namespaced(..regular, attrs: [modifier(latest_attr), ..attrs])
    _ -> scaffold
  }
}

@internal
pub fn modify_latest_attr_with_many(
  scaffold: Scaffold(msg, last_attr),
  modifiers: List(fn(attribute.Attribute(msg)) -> attribute.Attribute(msg)),
) -> Scaffold(msg, last_attr) {
  case scaffold {
    Regular(attrs: [latest_attr] as attrs, ..) as regular ->
      Regular(..regular, attrs: [
        list.fold(modifiers, latest_attr, fn(a, modifier) { modifier(a) }),
        ..attrs
      ])
    Namespaced(attrs: [latest_attr] as attrs, ..) as regular ->
      Namespaced(..regular, attrs: [
        list.fold(modifiers, latest_attr, fn(a, modifier) { modifier(a) }),
        ..attrs
      ])
    _ -> scaffold
  }
}
