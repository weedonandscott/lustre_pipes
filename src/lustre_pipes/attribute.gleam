// IMPORTS ---------------------------------------------------------------------

import gleam/dynamic.{type Decoder}
import gleam/int
import gleam/list
import gleam/string
import lustre/internals/vdom.{Attribute, Event}

import lustre_pipes/element.{type ElementScaffold}

// CONSTRUCTORS ----------------------------------------------------------------

/// Create an HTML attribute. This is like saying `element.setAttribute("class", "wibble")`
/// in JavaScript. Attributes will be rendered when calling [`element.to_string`](./element.html#to_string).
///
/// **Note**: there is a subtle difference between attributes and properties. You
/// can read more about the implications of this
/// [here](https://github.com/lustre-labs/lustre/blob/main/pages/hints/attributes-vs-properties.md).
///
pub fn attribute(
  scaffold: ElementScaffold(msg),
  name: String,
  value: String,
) -> ElementScaffold(msg) {
  #(scaffold.0, [
    Attribute(name, dynamic.from(value), as_property: False),
    ..scaffold.1
  ])
}

/// Create a DOM property. This is like saying `element.className = "wibble"` in
/// JavaScript. Properties will be **not** be rendered when calling
/// [`element.to_string`](./element.html#to_string).
///
/// **Note**: there is a subtle difference between attributes and properties. You
/// can read more about the implications of this
/// [here](https://github.com/lustre-labs/lustre/blob/main/pages/hints/attributes-vs-properties.md).
///
pub fn property(
  scaffold: ElementScaffold(msg),
  name: String,
  value: any,
) -> ElementScaffold(msg) {
  #(scaffold.0, [
    Attribute(name, dynamic.from(value), as_property: True),
    ..scaffold.1
  ])
}

///
pub fn on(
  scaffold: ElementScaffold(msg),
  name: String,
  handler: Decoder(msg),
) -> ElementScaffold(msg) {
  #(scaffold.0, [Event("on" <> name, handler), ..scaffold.1])
}

pub fn none(scaffold: ElementScaffold(msg)) -> ElementScaffold(msg) {
  scaffold
}

// MANIPULATIONS ---------------------------------------------------------------

/// The `Attribute` type is parameterised by the type of messages it can produce
/// from events handlers. Sometimes you might end up with an attribute from a
/// library or module that produces a different type of message: this function lets
/// you map the messages produced from one type to another.
///
// pub fn map(scaffold: ElementScaffold(msg),attr: Attribute(a), f: fn(a) -> b) -> Attribute(b) {
//   case attr {
//     Attribute(name, value, as_property) -> Attribute(name, value, as_property)
//     Event(on, handler) -> Event(on, fn(e) { result.map(handler(e), f) })
//   }
// }

// COMMON ATTRIBUTES -----------------------------------------------------------

///
///
/// > **Note**: unlike most attributes, multiple `style` attributes are merged
/// > with any existing other styles on an element. Styles added _later_ in the
/// > list will override styles added earlier.
///
pub fn style(
  scaffold: ElementScaffold(msg),
  properties: List(#(String, String)),
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("style", {
    use styles, #(name, value) <- list.fold(properties, "")
    styles <> name <> ":" <> value <> ";"
  })
}

///
///
/// > **Note**: unlike most attributes, multiple `class` attributes are merged
/// > with any existing other classes on an element.
///
pub fn class(
  scaffold: ElementScaffold(msg),
  name: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("class", name)
}

///
pub fn classes(
  scaffold: ElementScaffold(msg),
  names: List(#(String, Bool)),
) -> ElementScaffold(msg) {
  scaffold
  |> attribute(
    "class",
    names
      |> list.filter_map(fn(class) {
        case class.1 {
          True -> Ok(class.0)
          False -> Error(Nil)
        }
      })
      |> string.join(" "),
  )
}

///
pub fn id(scaffold: ElementScaffold(msg), name: String) -> ElementScaffold(msg) {
  scaffold
  |> attribute("id", name)
}

///
pub fn role(
  scaffold: ElementScaffold(msg),
  name: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("role", name)
}

///
pub fn title(
  scaffold: ElementScaffold(msg),
  name: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("title", name)
}

// INPUTS ----------------------------------------------------------------------

///
pub fn type_(
  scaffold: ElementScaffold(msg),
  name: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("type", name)
}

///
pub fn value(
  scaffold: ElementScaffold(msg),
  val: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("value", val)
}

///
pub fn checked(
  scaffold: ElementScaffold(msg),
  is_checked: Bool,
) -> ElementScaffold(msg) {
  scaffold
  |> property("checked", is_checked)
}

///
pub fn placeholder(
  scaffold: ElementScaffold(msg),
  text: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("placeholder", text)
}

///
pub fn selected(
  scaffold: ElementScaffold(msg),
  is_selected: Bool,
) -> ElementScaffold(msg) {
  scaffold
  |> property("selected", is_selected)
}

// INPUT HELPERS ---------------------------------------------------------------

///
pub fn accept(
  scaffold: ElementScaffold(msg),
  types: List(String),
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("accept", string.join(types, ","))
}

///
pub fn accept_charset(
  scaffold: ElementScaffold(msg),
  types: List(String),
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("acceptCharset", string.join(types, " "))
}

///
pub fn msg(scaffold: ElementScaffold(msg), uri: String) -> ElementScaffold(msg) {
  scaffold
  |> attribute("msg", uri)
}

///
pub fn autocomplete(
  scaffold: ElementScaffold(msg),
  name: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("autocomplete", name)
}

///
pub fn autofocus(
  scaffold: ElementScaffold(msg),
  should_autofocus: Bool,
) -> ElementScaffold(msg) {
  scaffold
  |> property("autofocus", should_autofocus)
}

///
pub fn disabled(
  scaffold: ElementScaffold(msg),
  is_disabled: Bool,
) -> ElementScaffold(msg) {
  scaffold
  |> property("disabled", is_disabled)
}

///
pub fn name(
  scaffold: ElementScaffold(msg),
  name: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("name", name)
}

///
pub fn pattern(
  scaffold: ElementScaffold(msg),
  regex: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("pattern", regex)
}

///
pub fn readonly(
  scaffold: ElementScaffold(msg),
  is_readonly: Bool,
) -> ElementScaffold(msg) {
  scaffold
  |> property("readonly", is_readonly)
}

///
pub fn required(
  scaffold: ElementScaffold(msg),
  is_required: Bool,
) -> ElementScaffold(msg) {
  scaffold
  |> property("required", is_required)
}

///
pub fn for(scaffold: ElementScaffold(msg), id: String) -> ElementScaffold(msg) {
  scaffold
  |> attribute("for", id)
}

// INPUT RANGES ----------------------------------------------------------------

///
pub fn max(scaffold: ElementScaffold(msg), val: String) -> ElementScaffold(msg) {
  scaffold
  |> attribute("max", val)
}

///
pub fn min(scaffold: ElementScaffold(msg), val: String) -> ElementScaffold(msg) {
  scaffold
  |> attribute("min", val)
}

///
pub fn step(scaffold: ElementScaffold(msg), val: String) -> ElementScaffold(msg) {
  scaffold
  |> attribute("step", val)
}

// INPUT TEXT AREAS ------------------------------------------------------------

///
pub fn cols(scaffold: ElementScaffold(msg), val: Int) -> ElementScaffold(msg) {
  scaffold
  |> attribute("cols", int.to_string(val))
}

///
pub fn rows(scaffold: ElementScaffold(msg), val: Int) -> ElementScaffold(msg) {
  scaffold
  |> attribute("rows", int.to_string(val))
}

///
pub fn wrap(
  scaffold: ElementScaffold(msg),
  mode: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("wrap", mode)
}

// LINKS AND AREAS -------------------------------------------------------------

///
pub fn href(scaffold: ElementScaffold(msg), uri: String) -> ElementScaffold(msg) {
  scaffold
  |> attribute("href", uri)
}

///
pub fn target(
  scaffold: ElementScaffold(msg),
  target: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("target", target)
}

///
pub fn download(
  scaffold: ElementScaffold(msg),
  filename: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("download", filename)
}

///
pub fn rel(
  scaffold: ElementScaffold(msg),
  relationship: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("rel", relationship)
}

// EMBEDDED CONTENT ------------------------------------------------------------

///
pub fn src(scaffold: ElementScaffold(msg), uri: String) -> ElementScaffold(msg) {
  scaffold
  |> attribute("src", uri)
}

///
pub fn height(scaffold: ElementScaffold(msg), val: Int) -> ElementScaffold(msg) {
  scaffold
  |> property("height", val)
}

///
pub fn width(scaffold: ElementScaffold(msg), val: Int) -> ElementScaffold(msg) {
  scaffold
  |> property("width", val)
}

///
pub fn alt(scaffold: ElementScaffold(msg), text: String) -> ElementScaffold(msg) {
  scaffold
  |> attribute("alt", text)
}

///
pub fn content(
  scaffold: ElementScaffold(msg),
  text: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("content", text)
}

// AUDIO AND VIDEO -------------------------------------------------------------

///
pub fn autoplay(
  scaffold: ElementScaffold(msg),
  should_autoplay: Bool,
) -> ElementScaffold(msg) {
  scaffold
  |> property("autoplay", should_autoplay)
}

///
pub fn controls(
  scaffold: ElementScaffold(msg),
  visible: Bool,
) -> ElementScaffold(msg) {
  scaffold
  |> property("controls", visible)
}

///
pub fn loop(
  scaffold: ElementScaffold(msg),
  should_loop: Bool,
) -> ElementScaffold(msg) {
  scaffold
  |> property("loop", should_loop)
}

// FORMS -----------------------------------------------------------------------

///
pub fn action(
  scaffold: ElementScaffold(msg),
  url: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("action", url)
}

///
pub fn enctype(
  scaffold: ElementScaffold(msg),
  value: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("enctype", value)
}

///
pub fn method(
  scaffold: ElementScaffold(msg),
  method: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("method", method)
}

///
pub fn novalidate(
  scaffold: ElementScaffold(msg),
  value: Bool,
) -> ElementScaffold(msg) {
  scaffold
  |> property("novalidate", value)
}

///
pub fn form_action(
  scaffold: ElementScaffold(msg),
  action: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("formaction", action)
}

///
pub fn form_enctype(
  scaffold: ElementScaffold(msg),
  value: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("formenctype", value)
}

///
pub fn form_method(
  scaffold: ElementScaffold(msg),
  method: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("formmethod", method)
}

///
pub fn form_novalidate(
  scaffold: ElementScaffold(msg),
  value: Bool,
) -> ElementScaffold(msg) {
  scaffold
  |> property("formnovalidate", value)
}

///
pub fn form_target(
  scaffold: ElementScaffold(msg),
  target: String,
) -> ElementScaffold(msg) {
  scaffold
  |> attribute("formtarget", target)
}

// DIALOGS ---------------------------------------------------------------------

///
pub fn open(
  scaffold: ElementScaffold(msg),
  is_open: Bool,
) -> ElementScaffold(msg) {
  scaffold
  |> property("open", is_open)
}
