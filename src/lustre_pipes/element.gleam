import lustre/attribute.{type Attribute}
import lustre/element

// TYPES -----------------------------------------------------------------------

pub type Element(msg) =
  element.Element(msg)

pub type ElementScaffold(msg) =
  #(String, List(Attribute(msg)))

pub type ChildlessElementScaffold(msg) =
  ElementScaffold(msg)

pub type TextContentElementScaffold(msg) =
  ElementScaffold(msg)

// CUSTOM FUNCTIONS ------------------------------------------------------------

pub fn element(tag: String) -> ElementScaffold(msg) {
  #(tag, [])
}

pub fn empty(scaffold: ElementScaffold(msg)) -> Element(msg) {
  element.element(scaffold.0, scaffold.1, [])
}

pub fn text_content(
  scaffold: ElementScaffold(msg),
  content: String,
) -> Element(msg) {
  element.element(scaffold.0, scaffold.1, [element.text(content)])
}

pub fn children(
  scaffold: ElementScaffold(msg),
  children: List(Element(msg)),
) -> Element(msg) {
  element.element(scaffold.0, scaffold.1, children)
}

pub fn keyed(
  scaffold: ElementScaffold(msg),
  pairs: List(#(String, Element(msg))),
) -> Element(msg) {
  element.keyed(children(scaffold, _), pairs)
}

// PARITY FUNCTIONS ------------------------------------------------------------

/// A function for turning a Gleam string into a text node. Gleam doesn't have
/// union types like some other languages you may be familiar with, like TypeScript.
/// Instead, we need a way to take a `String` and turn it into an `Element` somehow:
/// this function is exactly that!
///
pub const text = element.text

/// A function for rendering nothing. This is mostly useful for conditional
/// rendering, where you might want to render something only if a certain
/// condition is met.
///
pub const none = element.none

/// Convert a Lustre `Element` to a string. This is _not_ pretty-printed, so
/// there are no newlines or indentation. If you need to pretty-print an element,
/// reach out on the [Gleam Discord](https://discord.gg/Fm8Pwmy) or
/// [open an issue](https://github.com/lustre-labs/lustre/issues/new) with your
/// use case and we'll see what we can do!
///
pub const to_string = element.to_string

/// Converts an element to a string like [`to_string`](#to_string), but prepends
/// a `<!doctype html>` declaration to the string. This is useful for rendering
/// complete HTML documents.
///
/// If the provided element is not an `html` element, it will be wrapped in both
/// a `html` and `body` element.
///
pub const to_document_string = element.to_document_string

/// Convert a Lustre `Element` to a `StringBuilder`. This is _not_ pretty-printed,
/// so there are no newlines or indentation. If you need to pretty-print an element,
/// reach out on the [Gleam Discord](https://discord.gg/Fm8Pwmy) or
/// [open an issue](https://github.com/lustre-labs/lustre/issues/new) with your
/// use case and we'll see what we can do!
///
pub const to_string_builder = element.to_string_builder

/// Converts an element to a `StringBuilder` like [`to_string_builder`](#to_string_builder),
/// but prepends a `<!doctype html>` declaration. This is useful for rendering
/// complete HTML documents.
///
/// If the provided element is not an `html` element, it will be wrapped in both
/// a `html` and `body` element.
///
pub const to_document_string_builder = element.to_document_string_builder

/// Converts an element to a `StringBuilder` like [`to_string_builder`](#to_string_builder),
/// but prepends a `<!doctype html>` declaration. This is useful for rendering
/// complete HTML documents.
///
/// If the provided element is not an `html` element, it will be wrapped in both
/// a `html` and `body` element.
///
pub const to_readable_string = element.to_readable_string
