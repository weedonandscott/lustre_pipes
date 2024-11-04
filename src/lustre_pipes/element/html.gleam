// IMPORTS ---------------------------------------------------------------------

import lustre/element

import lustre_pipes/element.{
  type ChildlessElementScaffold, type ElementScaffold,
  type TextContentElementScaffold,
} as _

// HTML ELEMENTS: MAIN ROOT ----------------------------------------------------

///
pub fn html() -> ElementScaffold(msg) {
  #("html", [])
}

pub fn text(content: String) {
  element.text(content)
}

// HTML ELEMENTS: DOCUMENT METADATA --------------------------------------------

///
pub fn base() -> ChildlessElementScaffold(msg) {
  #("base", [])
}

///
pub fn head() -> ElementScaffold(msg) {
  #("head", [])
}

///
pub fn link() -> ChildlessElementScaffold(msg) {
  #("link", [])
}

///
pub fn meta() -> ChildlessElementScaffold(msg) {
  #("meta", [])
}

///
pub fn style() -> TextContentElementScaffold(msg) {
  #("style", [])
}

///
pub fn title() -> TextContentElementScaffold(msg) {
  #("title", [])
}

// HTML ELEMENTS: SECTIONING ROOT -----------------------------------------------

///
pub fn body() -> ElementScaffold(msg) {
  #("body", [])
}

// HTML ELEMENTS: CONTENT SECTIONING -------------------------------------------

///
pub fn address() -> ElementScaffold(msg) {
  #("address", [])
}

///
pub fn article() -> ElementScaffold(msg) {
  #("article", [])
}

///
pub fn aside() -> ElementScaffold(msg) {
  #("aside", [])
}

///
pub fn footer() -> ElementScaffold(msg) {
  #("footer", [])
}

///
pub fn header() -> ElementScaffold(msg) {
  #("header", [])
}

///
pub fn h1() -> ElementScaffold(msg) {
  #("h1", [])
}

///
pub fn h2() -> ElementScaffold(msg) {
  #("h2", [])
}

///
pub fn h3() -> ElementScaffold(msg) {
  #("h3", [])
}

///
pub fn h4() -> ElementScaffold(msg) {
  #("h4", [])
}

///
pub fn h5() -> ElementScaffold(msg) {
  #("h5", [])
}

///
pub fn h6() -> ElementScaffold(msg) {
  #("h6", [])
}

///
pub fn hgroup() -> ElementScaffold(msg) {
  #("hgroup", [])
}

///
pub fn main() -> ElementScaffold(msg) {
  #("main", [])
}

///
pub fn nav() -> ElementScaffold(msg) {
  #("nav", [])
}

///
pub fn section() -> ElementScaffold(msg) {
  #("section", [])
}

///
pub fn search() -> ElementScaffold(msg) {
  #("search", [])
}

// HTML ELEMENTS: TEXT CONTENT -------------------------------------------------

///
pub fn blockquote() -> ElementScaffold(msg) {
  #("blockquote", [])
}

///
pub fn dd() -> ElementScaffold(msg) {
  #("dd", [])
}

///
pub fn div() -> ElementScaffold(msg) {
  #("div", [])
}

///
pub fn dl() -> ElementScaffold(msg) {
  #("dl", [])
}

///
pub fn dt() -> ElementScaffold(msg) {
  #("dt", [])
}

///
pub fn figcaption() -> ElementScaffold(msg) {
  #("figcaption", [])
}

///
pub fn figure() -> ElementScaffold(msg) {
  #("figure", [])
}

///
pub fn hr() -> ChildlessElementScaffold(msg) {
  #("hr", [])
}

///
pub fn li() -> ElementScaffold(msg) {
  #("li", [])
}

///
pub fn menu() -> ElementScaffold(msg) {
  #("menu", [])
}

///
pub fn ol() -> ElementScaffold(msg) {
  #("ol", [])
}

///
pub fn p() -> ElementScaffold(msg) {
  #("p", [])
}

///
pub fn pre() -> ElementScaffold(msg) {
  #("pre", [])
}

///
pub fn ul() -> ElementScaffold(msg) {
  #("ul", [])
}

// HTML ELEMENTS: INLINE TEXT SEMANTICS ----------------------------------------

///
pub fn a() -> ElementScaffold(msg) {
  #("a", [])
}

///
pub fn abbr() -> ElementScaffold(msg) {
  #("abbr", [])
}

///
pub fn b() -> ElementScaffold(msg) {
  #("b", [])
}

///
pub fn bdi() -> ElementScaffold(msg) {
  #("bdi", [])
}

///
pub fn bdo() -> ElementScaffold(msg) {
  #("bdo", [])
}

///
pub fn br() -> ChildlessElementScaffold(msg) {
  #("br", [])
}

///
pub fn cite() -> ElementScaffold(msg) {
  #("cite", [])
}

///
pub fn code() -> ElementScaffold(msg) {
  #("code", [])
}

///
pub fn data() -> ElementScaffold(msg) {
  #("data", [])
}

///
pub fn dfn() -> ElementScaffold(msg) {
  #("dfn", [])
}

///
pub fn em() -> ElementScaffold(msg) {
  #("em", [])
}

///
pub fn i() -> ElementScaffold(msg) {
  #("i", [])
}

///
pub fn kbd() -> ElementScaffold(msg) {
  #("kbd", [])
}

///
pub fn mark() -> ElementScaffold(msg) {
  #("mark", [])
}

///
pub fn q() -> ElementScaffold(msg) {
  #("q", [])
}

///
pub fn rp() -> ElementScaffold(msg) {
  #("rp", [])
}

///
pub fn rt() -> ElementScaffold(msg) {
  #("rt", [])
}

///
pub fn ruby() -> ElementScaffold(msg) {
  #("ruby", [])
}

///
pub fn s() -> ElementScaffold(msg) {
  #("s", [])
}

///
pub fn samp() -> ElementScaffold(msg) {
  #("samp", [])
}

///
pub fn small() -> ElementScaffold(msg) {
  #("small", [])
}

///
pub fn span() -> ElementScaffold(msg) {
  #("span", [])
}

///
pub fn strong() -> ElementScaffold(msg) {
  #("strong", [])
}

///
pub fn sub() -> ElementScaffold(msg) {
  #("sub", [])
}

///
pub fn sup() -> ElementScaffold(msg) {
  #("sup", [])
}

///
pub fn time() -> ElementScaffold(msg) {
  #("time", [])
}

///
pub fn u() -> ElementScaffold(msg) {
  #("u", [])
}

///
pub fn var() -> ElementScaffold(msg) {
  #("var", [])
}

///
pub fn wbr() -> ChildlessElementScaffold(msg) {
  #("wbr", [])
}

// HTML ELEMENTS: IMAGE AND MULTIMEDIA -----------------------------------------

///
pub fn area() -> ChildlessElementScaffold(msg) {
  #("area", [])
}

///
pub fn audio() -> ElementScaffold(msg) {
  #("audio", [])
}

///
pub fn img() -> ChildlessElementScaffold(msg) {
  #("img", [])
}

/// Used with <area> elements to define an image map (a clickable link area).
///
pub fn map() -> ElementScaffold(msg) {
  #("map", [])
}

///
pub fn track() -> ChildlessElementScaffold(msg) {
  #("track", [])
}

///
pub fn video() -> ElementScaffold(msg) {
  #("video", [])
}

// HTML ELEMENTS: EMBEDDED CONTENT ---------------------------------------------

///
pub fn embed() -> ChildlessElementScaffold(msg) {
  #("embed", [])
}

///
pub fn iframe() -> ChildlessElementScaffold(msg) {
  #("iframe", [])
}

///
pub fn object() -> ChildlessElementScaffold(msg) {
  #("object", [])
}

///
pub fn picture() -> ElementScaffold(msg) {
  #("picture", [])
}

///
pub fn portal() -> ChildlessElementScaffold(msg) {
  #("portal", [])
}

///
pub fn source() -> ChildlessElementScaffold(msg) {
  #("source", [])
}

// HTML ELEMENTS: SVG AND MATHML -----------------------------------------------

// HTML ELEMENTS: SCRIPTING ----------------------------------------------------

///
pub fn canvas() -> ChildlessElementScaffold(msg) {
  #("canvas", [])
}

///
pub fn noscript() -> ElementScaffold(msg) {
  #("noscript", [])
}

///
pub fn script() -> TextContentElementScaffold(msg) {
  #("script", [])
}

// HTML ELEMENTS: DEMARCATING EDITS ---------------------------------------------

///
pub fn del() -> ElementScaffold(msg) {
  #("del", [])
}

///
pub fn ins() -> ElementScaffold(msg) {
  #("ins", [])
}

// HTML ELEMENTS: TABLE CONTENT ------------------------------------------------

///
pub fn caption() -> ElementScaffold(msg) {
  #("caption", [])
}

///
pub fn col() -> ChildlessElementScaffold(msg) {
  #("col", [])
}

///
pub fn colgroup() -> ElementScaffold(msg) {
  #("colgroup", [])
}

///
pub fn table() -> ElementScaffold(msg) {
  #("table", [])
}

///
pub fn tbody() -> ElementScaffold(msg) {
  #("tbody", [])
}

///
pub fn td() -> ElementScaffold(msg) {
  #("td", [])
}

///
pub fn tfoot() -> ElementScaffold(msg) {
  #("tfoot", [])
}

///
pub fn th() -> ElementScaffold(msg) {
  #("th", [])
}

///
pub fn thead() -> ElementScaffold(msg) {
  #("thead", [])
}

///
pub fn tr() -> ElementScaffold(msg) {
  #("tr", [])
}

// HTML ELEMENTS: FORMS --------------------------------------------------------

///
pub fn button() -> ElementScaffold(msg) {
  #("button", [])
}

///
pub fn datalist() -> ElementScaffold(msg) {
  #("datalist", [])
}

///
pub fn fieldset() -> ElementScaffold(msg) {
  #("fieldset", [])
}

///
pub fn form() -> ElementScaffold(msg) {
  #("form", [])
}

///
pub fn input() -> ChildlessElementScaffold(msg) {
  #("input", [])
}

///
pub fn label() -> ElementScaffold(msg) {
  #("label", [])
}

///
pub fn legend() -> ElementScaffold(msg) {
  #("legend", [])
}

///
pub fn meter() -> ElementScaffold(msg) {
  #("meter", [])
}

///
pub fn optgroup() -> ElementScaffold(msg) {
  #("optgroup", [])
}

///
pub fn option() -> TextContentElementScaffold(msg) {
  #("option", [])
}

///
pub fn output() -> ElementScaffold(msg) {
  #("output", [])
}

///
pub fn progress() -> ElementScaffold(msg) {
  #("progress", [])
}

///
pub fn select() -> ElementScaffold(msg) {
  #("select", [])
}

///
pub fn textarea() -> TextContentElementScaffold(msg) {
  #("textarea", [])
}

// HTML ELEMENTS: INTERACTIVE ELEMENTS -----------------------------------------

///
pub fn details() -> ElementScaffold(msg) {
  #("details", [])
}

///
pub fn dialog() -> ElementScaffold(msg) {
  #("dialog", [])
}

///
pub fn summary() -> ElementScaffold(msg) {
  #("summary", [])
}

// HTML ELEMENTS: WEB COMPONENTS -----------------------------------------------

///
pub fn slot() -> ChildlessElementScaffold(msg) {
  #("slot", [])
}

///
pub fn template() -> ElementScaffold(msg) {
  #("template", [])
}
