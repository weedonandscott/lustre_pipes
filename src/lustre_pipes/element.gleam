import lustre/attribute.{type Attribute}
import lustre/element.{element}

pub type Element(msg) =
  element.Element(msg)

pub type ElementScaffold(msg) =
  #(String, List(Attribute(msg)))

pub type ChildlessElementScaffold(msg) =
  ElementScaffold(msg)

pub type TextContentElementScaffold(msg) =
  ElementScaffold(msg)

pub fn empty(scaffold: ElementScaffold(msg)) -> Element(msg) {
  element(scaffold.0, scaffold.1, [])
}

pub fn text_content(
  scaffold: ElementScaffold(msg),
  content: String,
) -> Element(msg) {
  element(scaffold.0, scaffold.1, [element.text(content)])
}

pub fn children(
  scaffold: ElementScaffold(msg),
  children: List(Element(msg)),
) -> Element(msg) {
  element(scaffold.0, scaffold.1, children)
}

pub fn keyed(
  scaffold: ElementScaffold(msg),
  pairs: List(#(String, Element(msg))),
) -> Element(msg) {
  element.keyed(children(scaffold, _), pairs)
}
