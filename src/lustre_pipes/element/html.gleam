// IMPORTS ---------------------------------------------------------------------

import lustre/element/html
import lustre_pipes/internal/scaffold.{
  type ChildlessScaffold, type Scaffold, type TextContentScaffold,
}

// HTML ELEMENTS: MAIN ROOT ----------------------------------------------------

///
pub fn html() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("html")
}

pub fn text(content: String) {
  html.text(content)
}

// HTML ELEMENTS: DOCUMENT METADATA --------------------------------------------

///
pub fn base() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("base")
}

///
pub fn head() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("head")
}

///
pub fn link() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("link")
}

///
pub fn meta() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("meta")
}

///
pub fn style() -> TextContentScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("style")
}

///
pub fn title() -> TextContentScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("title")
}

// HTML ELEMENTS: SECTIONING ROOT -----------------------------------------------

///
pub fn body() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("body")
}

// HTML ELEMENTS: CONTENT SECTIONING -------------------------------------------

///
pub fn address() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("address")
}

///
pub fn article() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("article")
}

///
pub fn aside() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("aside")
}

///
pub fn footer() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("footer")
}

///
pub fn header() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("header")
}

///
pub fn h1() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("h1")
}

///
pub fn h2() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("h2")
}

///
pub fn h3() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("h3")
}

///
pub fn h4() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("h4")
}

///
pub fn h5() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("h5")
}

///
pub fn h6() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("h6")
}

///
pub fn hgroup() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("hgroup")
}

///
pub fn main() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("main")
}

///
pub fn nav() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("nav")
}

///
pub fn section() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("section")
}

///
pub fn search() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("search")
}

// HTML ELEMENTS: TEXT CONTENT -------------------------------------------------

///
pub fn blockquote() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("blockquote")
}

///
pub fn dd() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("dd")
}

///
pub fn div() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("div")
}

///
pub fn dl() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("dl")
}

///
pub fn dt() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("dt")
}

///
pub fn figcaption() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("figcaption")
}

///
pub fn figure() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("figure")
}

///
pub fn hr() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("hr")
}

///
pub fn li() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("li")
}

///
pub fn menu() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("menu")
}

///
pub fn ol() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("ol")
}

///
pub fn p() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("p")
}

///
pub fn pre() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("pre")
}

///
pub fn ul() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("ul")
}

// HTML ELEMENTS: INLINE TEXT SEMANTICS ----------------------------------------

///
pub fn a() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("a")
}

///
pub fn abbr() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("abbr")
}

///
pub fn b() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("b")
}

///
pub fn bdi() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("bdi")
}

///
pub fn bdo() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("bdo")
}

///
pub fn br() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("br")
}

///
pub fn cite() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("cite")
}

///
pub fn code() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("code")
}

///
pub fn data() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("data")
}

///
pub fn dfn() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("dfn")
}

///
pub fn em() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("em")
}

///
pub fn i() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("i")
}

///
pub fn kbd() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("kbd")
}

///
pub fn mark() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("mark")
}

///
pub fn q() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("q")
}

///
pub fn rp() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("rp")
}

///
pub fn rt() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("rt")
}

///
pub fn ruby() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("ruby")
}

///
pub fn s() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("s")
}

///
pub fn samp() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("samp")
}

///
pub fn small() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("small")
}

///
pub fn span() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("span")
}

///
pub fn strong() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("strong")
}

///
pub fn sub() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("sub")
}

///
pub fn sup() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("sup")
}

///
pub fn time() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("time")
}

///
pub fn u() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("u")
}

///
pub fn var() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("var")
}

///
pub fn wbr() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("wbr")
}

// HTML ELEMENTS: IMAGE AND MULTIMEDIA -----------------------------------------

///
pub fn area() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("area")
}

///
pub fn audio() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("audio")
}

///
pub fn img() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("img")
}

/// Used with <area> elements to define an image map (a clickable link area).
///
pub fn map() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("map")
}

///
pub fn track() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("track")
}

///
pub fn video() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("video")
}

// HTML ELEMENTS: EMBEDDED CONTENT ---------------------------------------------

///
pub fn embed() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("embed")
}

///
pub fn iframe() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("iframe")
}

///
pub fn object() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("object")
}

///
pub fn picture() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("picture")
}

///
pub fn portal() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("portal")
}

///
pub fn source() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("source")
}

// HTML ELEMENTS: SVG AND MATHML -----------------------------------------------

///
pub fn math() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(
    namespace: "http://www.w3.org/1998/Math/MathML",
    tag: "math",
  )
}

///
pub fn svg() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace: "http://www.w3.org/2000/svg", tag: "svg")
}

// HTML ELEMENTS: SCRIPTING ----------------------------------------------------

///
pub fn canvas() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("canvas")
}

///
pub fn noscript() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("noscript")
}

///
pub fn script() -> TextContentScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("script")
}

// HTML ELEMENTS: DEMARCATING EDITS ---------------------------------------------

///
pub fn del() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("del")
}

///
pub fn ins() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("ins")
}

// HTML ELEMENTS: TABLE CONTENT ------------------------------------------------

///
pub fn caption() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("caption")
}

///
pub fn col() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("col")
}

///
pub fn colgroup() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("colgroup")
}

///
pub fn table() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("table")
}

///
pub fn tbody() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("tbody")
}

///
pub fn td() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("td")
}

///
pub fn tfoot() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("tfoot")
}

///
pub fn th() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("th")
}

///
pub fn thead() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("thead")
}

///
pub fn tr() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("tr")
}

// HTML ELEMENTS: FORMS --------------------------------------------------------

///
pub fn button() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("button")
}

///
pub fn datalist() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("datalist")
}

///
pub fn fieldset() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("fieldset")
}

///
pub fn form() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("form")
}

///
pub fn input() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("input")
}

///
pub fn label() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("label")
}

///
pub fn legend() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("legend")
}

///
pub fn meter() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("meter")
}

///
pub fn optgroup() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("optgroup")
}

///
pub fn option() -> TextContentScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("option")
}

///
pub fn output() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("output")
}

///
pub fn progress() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("progress")
}

///
pub fn select() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("select")
}

///
pub fn textarea() -> TextContentScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("textarea")
}

// HTML ELEMENTS: INTERACTIVE ELEMENTS -----------------------------------------

///
pub fn details() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("details")
}

///
pub fn dialog() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("dialog")
}

///
pub fn summary() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("summary")
}

// HTML ELEMENTS: WEB COMPONENTS -----------------------------------------------

///
pub fn slot() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("slot")
}

///
pub fn template() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.regular("template")
}
