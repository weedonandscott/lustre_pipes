// IMPORTS ---------------------------------------------------------------------

import lustre/element/html

import lustre_pipes/element

// HTML ELEMENTS: MAIN ROOT ----------------------------------------------------

///
pub fn html() -> element.Scaffold(msg) {
  #("html", [])
}

pub fn text(content: String) {
  html.text(content)
}

// HTML ELEMENTS: DOCUMENT METADATA --------------------------------------------

///
pub fn base() -> element.ChildlessScaffold(msg) {
  #("base", [])
}

///
pub fn head() -> element.Scaffold(msg) {
  #("head", [])
}

///
pub fn link() -> element.ChildlessScaffold(msg) {
  #("link", [])
}

///
pub fn meta() -> element.ChildlessScaffold(msg) {
  #("meta", [])
}

///
pub fn style() -> element.TextContentScaffold(msg) {
  #("style", [])
}

///
pub fn title() -> element.TextContentScaffold(msg) {
  #("title", [])
}

// HTML ELEMENTS: SECTIONING ROOT -----------------------------------------------

///
pub fn body() -> element.Scaffold(msg) {
  #("body", [])
}

// HTML ELEMENTS: CONTENT SECTIONING -------------------------------------------

///
pub fn address() -> element.Scaffold(msg) {
  #("address", [])
}

///
pub fn article() -> element.Scaffold(msg) {
  #("article", [])
}

///
pub fn aside() -> element.Scaffold(msg) {
  #("aside", [])
}

///
pub fn footer() -> element.Scaffold(msg) {
  #("footer", [])
}

///
pub fn header() -> element.Scaffold(msg) {
  #("header", [])
}

///
pub fn h1() -> element.Scaffold(msg) {
  #("h1", [])
}

///
pub fn h2() -> element.Scaffold(msg) {
  #("h2", [])
}

///
pub fn h3() -> element.Scaffold(msg) {
  #("h3", [])
}

///
pub fn h4() -> element.Scaffold(msg) {
  #("h4", [])
}

///
pub fn h5() -> element.Scaffold(msg) {
  #("h5", [])
}

///
pub fn h6() -> element.Scaffold(msg) {
  #("h6", [])
}

///
pub fn hgroup() -> element.Scaffold(msg) {
  #("hgroup", [])
}

///
pub fn main() -> element.Scaffold(msg) {
  #("main", [])
}

///
pub fn nav() -> element.Scaffold(msg) {
  #("nav", [])
}

///
pub fn section() -> element.Scaffold(msg) {
  #("section", [])
}

///
pub fn search() -> element.Scaffold(msg) {
  #("search", [])
}

// HTML ELEMENTS: TEXT CONTENT -------------------------------------------------

///
pub fn blockquote() -> element.Scaffold(msg) {
  #("blockquote", [])
}

///
pub fn dd() -> element.Scaffold(msg) {
  #("dd", [])
}

///
pub fn div() -> element.Scaffold(msg) {
  #("div", [])
}

///
pub fn dl() -> element.Scaffold(msg) {
  #("dl", [])
}

///
pub fn dt() -> element.Scaffold(msg) {
  #("dt", [])
}

///
pub fn figcaption() -> element.Scaffold(msg) {
  #("figcaption", [])
}

///
pub fn figure() -> element.Scaffold(msg) {
  #("figure", [])
}

///
pub fn hr() -> element.ChildlessScaffold(msg) {
  #("hr", [])
}

///
pub fn li() -> element.Scaffold(msg) {
  #("li", [])
}

///
pub fn menu() -> element.Scaffold(msg) {
  #("menu", [])
}

///
pub fn ol() -> element.Scaffold(msg) {
  #("ol", [])
}

///
pub fn p() -> element.Scaffold(msg) {
  #("p", [])
}

///
pub fn pre() -> element.Scaffold(msg) {
  #("pre", [])
}

///
pub fn ul() -> element.Scaffold(msg) {
  #("ul", [])
}

// HTML ELEMENTS: INLINE TEXT SEMANTICS ----------------------------------------

///
pub fn a() -> element.Scaffold(msg) {
  #("a", [])
}

///
pub fn abbr() -> element.Scaffold(msg) {
  #("abbr", [])
}

///
pub fn b() -> element.Scaffold(msg) {
  #("b", [])
}

///
pub fn bdi() -> element.Scaffold(msg) {
  #("bdi", [])
}

///
pub fn bdo() -> element.Scaffold(msg) {
  #("bdo", [])
}

///
pub fn br() -> element.ChildlessScaffold(msg) {
  #("br", [])
}

///
pub fn cite() -> element.Scaffold(msg) {
  #("cite", [])
}

///
pub fn code() -> element.Scaffold(msg) {
  #("code", [])
}

///
pub fn data() -> element.Scaffold(msg) {
  #("data", [])
}

///
pub fn dfn() -> element.Scaffold(msg) {
  #("dfn", [])
}

///
pub fn em() -> element.Scaffold(msg) {
  #("em", [])
}

///
pub fn i() -> element.Scaffold(msg) {
  #("i", [])
}

///
pub fn kbd() -> element.Scaffold(msg) {
  #("kbd", [])
}

///
pub fn mark() -> element.Scaffold(msg) {
  #("mark", [])
}

///
pub fn q() -> element.Scaffold(msg) {
  #("q", [])
}

///
pub fn rp() -> element.Scaffold(msg) {
  #("rp", [])
}

///
pub fn rt() -> element.Scaffold(msg) {
  #("rt", [])
}

///
pub fn ruby() -> element.Scaffold(msg) {
  #("ruby", [])
}

///
pub fn s() -> element.Scaffold(msg) {
  #("s", [])
}

///
pub fn samp() -> element.Scaffold(msg) {
  #("samp", [])
}

///
pub fn small() -> element.Scaffold(msg) {
  #("small", [])
}

///
pub fn span() -> element.Scaffold(msg) {
  #("span", [])
}

///
pub fn strong() -> element.Scaffold(msg) {
  #("strong", [])
}

///
pub fn sub() -> element.Scaffold(msg) {
  #("sub", [])
}

///
pub fn sup() -> element.Scaffold(msg) {
  #("sup", [])
}

///
pub fn time() -> element.Scaffold(msg) {
  #("time", [])
}

///
pub fn u() -> element.Scaffold(msg) {
  #("u", [])
}

///
pub fn var() -> element.Scaffold(msg) {
  #("var", [])
}

///
pub fn wbr() -> element.ChildlessScaffold(msg) {
  #("wbr", [])
}

// HTML ELEMENTS: IMAGE AND MULTIMEDIA -----------------------------------------

///
pub fn area() -> element.ChildlessScaffold(msg) {
  #("area", [])
}

///
pub fn audio() -> element.Scaffold(msg) {
  #("audio", [])
}

///
pub fn img() -> element.ChildlessScaffold(msg) {
  #("img", [])
}

/// Used with <area> elements to define an image map (a clickable link area).
///
pub fn map() -> element.Scaffold(msg) {
  #("map", [])
}

///
pub fn track() -> element.ChildlessScaffold(msg) {
  #("track", [])
}

///
pub fn video() -> element.Scaffold(msg) {
  #("video", [])
}

// HTML ELEMENTS: EMBEDDED CONTENT ---------------------------------------------

///
pub fn embed() -> element.ChildlessScaffold(msg) {
  #("embed", [])
}

///
pub fn iframe() -> element.ChildlessScaffold(msg) {
  #("iframe", [])
}

///
pub fn object() -> element.ChildlessScaffold(msg) {
  #("object", [])
}

///
pub fn picture() -> element.Scaffold(msg) {
  #("picture", [])
}

///
pub fn portal() -> element.ChildlessScaffold(msg) {
  #("portal", [])
}

///
pub fn source() -> element.ChildlessScaffold(msg) {
  #("source", [])
}

// HTML ELEMENTS: SVG AND MATHML -----------------------------------------------

// HTML ELEMENTS: SCRIPTING ----------------------------------------------------

///
pub fn canvas() -> element.ChildlessScaffold(msg) {
  #("canvas", [])
}

///
pub fn noscript() -> element.Scaffold(msg) {
  #("noscript", [])
}

///
pub fn script() -> element.TextContentScaffold(msg) {
  #("script", [])
}

// HTML ELEMENTS: DEMARCATING EDITS ---------------------------------------------

///
pub fn del() -> element.Scaffold(msg) {
  #("del", [])
}

///
pub fn ins() -> element.Scaffold(msg) {
  #("ins", [])
}

// HTML ELEMENTS: TABLE CONTENT ------------------------------------------------

///
pub fn caption() -> element.Scaffold(msg) {
  #("caption", [])
}

///
pub fn col() -> element.ChildlessScaffold(msg) {
  #("col", [])
}

///
pub fn colgroup() -> element.Scaffold(msg) {
  #("colgroup", [])
}

///
pub fn table() -> element.Scaffold(msg) {
  #("table", [])
}

///
pub fn tbody() -> element.Scaffold(msg) {
  #("tbody", [])
}

///
pub fn td() -> element.Scaffold(msg) {
  #("td", [])
}

///
pub fn tfoot() -> element.Scaffold(msg) {
  #("tfoot", [])
}

///
pub fn th() -> element.Scaffold(msg) {
  #("th", [])
}

///
pub fn thead() -> element.Scaffold(msg) {
  #("thead", [])
}

///
pub fn tr() -> element.Scaffold(msg) {
  #("tr", [])
}

// HTML ELEMENTS: FORMS --------------------------------------------------------

///
pub fn button() -> element.Scaffold(msg) {
  #("button", [])
}

///
pub fn datalist() -> element.Scaffold(msg) {
  #("datalist", [])
}

///
pub fn fieldset() -> element.Scaffold(msg) {
  #("fieldset", [])
}

///
pub fn form() -> element.Scaffold(msg) {
  #("form", [])
}

///
pub fn input() -> element.ChildlessScaffold(msg) {
  #("input", [])
}

///
pub fn label() -> element.Scaffold(msg) {
  #("label", [])
}

///
pub fn legend() -> element.Scaffold(msg) {
  #("legend", [])
}

///
pub fn meter() -> element.Scaffold(msg) {
  #("meter", [])
}

///
pub fn optgroup() -> element.Scaffold(msg) {
  #("optgroup", [])
}

///
pub fn option() -> element.TextContentScaffold(msg) {
  #("option", [])
}

///
pub fn output() -> element.Scaffold(msg) {
  #("output", [])
}

///
pub fn progress() -> element.Scaffold(msg) {
  #("progress", [])
}

///
pub fn select() -> element.Scaffold(msg) {
  #("select", [])
}

///
pub fn textarea() -> element.TextContentScaffold(msg) {
  #("textarea", [])
}

// HTML ELEMENTS: INTERACTIVE ELEMENTS -----------------------------------------

///
pub fn details() -> element.Scaffold(msg) {
  #("details", [])
}

///
pub fn dialog() -> element.Scaffold(msg) {
  #("dialog", [])
}

///
pub fn summary() -> element.Scaffold(msg) {
  #("summary", [])
}

// HTML ELEMENTS: WEB COMPONENTS -----------------------------------------------

///
pub fn slot() -> element.ChildlessScaffold(msg) {
  #("slot", [])
}

///
pub fn template() -> element.Scaffold(msg) {
  #("template", [])
}
