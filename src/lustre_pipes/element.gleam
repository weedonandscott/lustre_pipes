import lustre/attribute.{type Attribute}
import lustre/element
import lustre/element/keyed

// TYPES -----------------------------------------------------------------------

pub type Element(msg) =
  element.Element(msg)

pub type Scaffold(msg) =
  #(String, List(Attribute(msg)))

pub type ChildlessScaffold(msg) =
  Scaffold(msg)

pub type TextContentScaffold(msg) =
  Scaffold(msg)

// CUSTOM FUNCTIONS ------------------------------------------------------------

pub fn element(tag: String) -> Scaffold(msg) {
  #(tag, [])
}

pub fn empty(scaffold: Scaffold(msg)) -> Element(msg) {
  element.element(scaffold.0, scaffold.1, [])
}

pub fn text_content(scaffold: Scaffold(msg), content: String) -> Element(msg) {
  element.element(scaffold.0, scaffold.1, [element.text(content)])
}

pub fn children(
  scaffold: Scaffold(msg),
  children: List(Element(msg)),
) -> Element(msg) {
  element.element(scaffold.0, scaffold.1, children)
}

pub fn keyed(
  scaffold: Scaffold(msg),
  pairs: List(#(String, Element(msg))),
) -> Element(msg) {
  keyed.element(scaffold.0, scaffold.1, pairs)
}

// PARITY FUNCTIONS ------------------------------------------------------------

/// A function for constructing elements with more control over how the element
/// is rendered when converted to a string. This is necessary because some HTML,
/// SVG, and MathML elements are self-closing or void elements, and Lustre needs
/// to know how to render them correctly!
///
pub const advanced = element.advanced

/// A function for constructing a wrapper element with no tag name. This is
/// useful for wrapping a list of elements together without adding an extra
/// `<div>` or other container element, or returning multiple elements in places
/// where only one `Element` is expected.
///
pub const fragment = element.fragment

/// The `Element` type is parameterised by the type of messages it can produce
/// from events. Sometimes you might end up with a fragment of HTML from another
/// library or module that produces a different type of message: this function lets
/// you map the messages produced from one type to another.
///
/// Think of it like `list.map` or `result.map` but for HTML events!
///
pub const map = element.map

/// A function for rendering nothing. This is mostly useful for conditional
/// rendering, where you might want to render something only if a certain
/// condition is met.
///
pub const none = element.none

/// A function for turning a Gleam string into a text node. Gleam doesn't have
/// union types like some other languages you may be familiar with, like TypeScript.
/// Instead, we need a way to take a `String` and turn it into an `Element` somehow:
/// this function is exactly that!
///
pub const text = element.text

/// Convert a Lustre `Element` to a string. This is _not_ pretty-printed, so
/// there are no newlines or indentation. If you need to pretty-print an element,
/// reach out on the [Gleam Discord](https://discord.gg/Fm8Pwmy) or
/// [open an issue](https://github.com/lustre-labs/lustre/issues/new) with your
/// use case and we'll see what we can do!
///
pub const to_string = element.to_string

/// Convert a Lustre `Element` to a `StringTree`. This is _not_ pretty-printed,
/// so there are no newlines or indentation. If you need to pretty-print an element,
/// reach out on the [Gleam Discord](https://discord.gg/Fm8Pwmy) or
/// [open an issue](https://github.com/lustre-labs/lustre/issues/new) with your
/// use case and we'll see what we can do!
///
pub const to_string_tree = element.to_string_tree

/// Converts an element to a string like [`to_string`](#to_string), but prepends
/// a `<!doctype html>` declaration to the string. This is useful for rendering
/// complete HTML documents.
///
/// If the provided element is not an `html` element, it will be wrapped in both
/// a `html` and `body` element.
///
pub const to_document_string = element.to_document_string

/// Converts an element to a `StringTree` like [`to_string_builder`](#to_string_builder),
/// but prepends a `<!doctype html>` declaration. This is useful for rendering
/// complete HTML documents.
///
/// If the provided element is not an `html` element, it will be wrapped in both
/// a `html` and `body` element.
///
pub const to_document_string_tree = element.to_document_string_tree

/// Converts an element to a `StringBuilder` like [`to_string_builder`](#to_string_builder),
/// but prepends a `<!doctype html>` declaration. This is useful for rendering
/// complete HTML documents.
///
/// If the provided element is not an `html` element, it will be wrapped in both
/// a `html` and `body` element.
///
pub const to_readable_string = element.to_readable_string

/// A function for constructing a wrapper element with custom raw HTML as its
/// content. Lustre will render the provided HTML verbatim, and will not touch
/// its children except when replacing the entire inner html on changes.
///
/// > **Note:** The provided HTML will not be escaped automatically and may expose
/// > your applications to XSS attacks! Make sure you absolutely trust the HTML you
/// > pass to this function. In particular, never use this to display un-sanitised
/// > user HTML!
///
pub const unsafe_raw_html = element.unsafe_raw_html
