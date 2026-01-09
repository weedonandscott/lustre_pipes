// IMPORTS ---------------------------------------------------------------------

import lustre/element/html
import lustre_pipes/internal/scaffold.{
  type ChildlessScaffold, type Scaffold, type TextContentScaffold,
}

// HTML ELEMENTS: MAIN ROOT ----------------------------------------------------

///
pub fn html() -> Scaffold(msg) {
  scaffold.regular("html")
}

pub fn text(content: String) {
  html.text(content)
}

// HTML ELEMENTS: DOCUMENT METADATA --------------------------------------------

///
pub fn base() -> ChildlessScaffold(msg) {
  scaffold.regular("base")
}

///
pub fn head() -> Scaffold(msg) {
  scaffold.regular("head")
}

///
pub fn link() -> ChildlessScaffold(msg) {
  scaffold.regular("link")
}

///
pub fn meta() -> ChildlessScaffold(msg) {
  scaffold.regular("meta")
}

///
pub fn style() -> TextContentScaffold(msg) {
  scaffold.regular("style")
}

///
pub fn title() -> TextContentScaffold(msg) {
  scaffold.regular("title")
}

// HTML ELEMENTS: SECTIONING ROOT -----------------------------------------------

///
pub fn body() -> Scaffold(msg) {
  scaffold.regular("body")
}

// HTML ELEMENTS: CONTENT SECTIONING -------------------------------------------

///
pub fn address() -> Scaffold(msg) {
  scaffold.regular("address")
}

///
pub fn article() -> Scaffold(msg) {
  scaffold.regular("article")
}

///
pub fn aside() -> Scaffold(msg) {
  scaffold.regular("aside")
}

///
pub fn footer() -> Scaffold(msg) {
  scaffold.regular("footer")
}

///
pub fn header() -> Scaffold(msg) {
  scaffold.regular("header")
}

///
pub fn h1() -> Scaffold(msg) {
  scaffold.regular("h1")
}

///
pub fn h2() -> Scaffold(msg) {
  scaffold.regular("h2")
}

///
pub fn h3() -> Scaffold(msg) {
  scaffold.regular("h3")
}

///
pub fn h4() -> Scaffold(msg) {
  scaffold.regular("h4")
}

///
pub fn h5() -> Scaffold(msg) {
  scaffold.regular("h5")
}

///
pub fn h6() -> Scaffold(msg) {
  scaffold.regular("h6")
}

///
pub fn hgroup() -> Scaffold(msg) {
  scaffold.regular("hgroup")
}

///
pub fn main() -> Scaffold(msg) {
  scaffold.regular("main")
}

///
pub fn nav() -> Scaffold(msg) {
  scaffold.regular("nav")
}

///
pub fn section() -> Scaffold(msg) {
  scaffold.regular("section")
}

///
pub fn search() -> Scaffold(msg) {
  scaffold.regular("search")
}

// HTML ELEMENTS: TEXT CONTENT -------------------------------------------------

///
pub fn blockquote() -> Scaffold(msg) {
  scaffold.regular("blockquote")
}

///
pub fn dd() -> Scaffold(msg) {
  scaffold.regular("dd")
}

///
pub fn div() -> Scaffold(msg) {
  scaffold.regular("div")
}

///
pub fn dl() -> Scaffold(msg) {
  scaffold.regular("dl")
}

///
pub fn dt() -> Scaffold(msg) {
  scaffold.regular("dt")
}

///
pub fn figcaption() -> Scaffold(msg) {
  scaffold.regular("figcaption")
}

///
pub fn figure() -> Scaffold(msg) {
  scaffold.regular("figure")
}

///
pub fn hr() -> ChildlessScaffold(msg) {
  scaffold.regular("hr")
}

///
pub fn li() -> Scaffold(msg) {
  scaffold.regular("li")
}

///
pub fn menu() -> Scaffold(msg) {
  scaffold.regular("menu")
}

///
pub fn ol() -> Scaffold(msg) {
  scaffold.regular("ol")
}

///
pub fn p() -> Scaffold(msg) {
  scaffold.regular("p")
}

///
pub fn pre() -> Scaffold(msg) {
  scaffold.regular("pre")
}

///
pub fn ul() -> Scaffold(msg) {
  scaffold.regular("ul")
}

// HTML ELEMENTS: INLINE TEXT SEMANTICS ----------------------------------------

///
pub fn a() -> Scaffold(msg) {
  scaffold.regular("a")
}

///
pub fn abbr() -> Scaffold(msg) {
  scaffold.regular("abbr")
}

///
pub fn b() -> Scaffold(msg) {
  scaffold.regular("b")
}

///
pub fn bdi() -> Scaffold(msg) {
  scaffold.regular("bdi")
}

///
pub fn bdo() -> Scaffold(msg) {
  scaffold.regular("bdo")
}

///
pub fn br() -> ChildlessScaffold(msg) {
  scaffold.regular("br")
}

///
pub fn cite() -> Scaffold(msg) {
  scaffold.regular("cite")
}

///
pub fn code() -> Scaffold(msg) {
  scaffold.regular("code")
}

///
pub fn data() -> Scaffold(msg) {
  scaffold.regular("data")
}

///
pub fn dfn() -> Scaffold(msg) {
  scaffold.regular("dfn")
}

///
pub fn em() -> Scaffold(msg) {
  scaffold.regular("em")
}

///
pub fn i() -> Scaffold(msg) {
  scaffold.regular("i")
}

///
pub fn kbd() -> Scaffold(msg) {
  scaffold.regular("kbd")
}

///
pub fn mark() -> Scaffold(msg) {
  scaffold.regular("mark")
}

///
pub fn q() -> Scaffold(msg) {
  scaffold.regular("q")
}

///
pub fn rp() -> Scaffold(msg) {
  scaffold.regular("rp")
}

///
pub fn rt() -> Scaffold(msg) {
  scaffold.regular("rt")
}

///
pub fn ruby() -> Scaffold(msg) {
  scaffold.regular("ruby")
}

///
pub fn s() -> Scaffold(msg) {
  scaffold.regular("s")
}

///
pub fn samp() -> Scaffold(msg) {
  scaffold.regular("samp")
}

///
pub fn small() -> Scaffold(msg) {
  scaffold.regular("small")
}

///
pub fn span() -> Scaffold(msg) {
  scaffold.regular("span")
}

///
pub fn strong() -> Scaffold(msg) {
  scaffold.regular("strong")
}

///
pub fn sub() -> Scaffold(msg) {
  scaffold.regular("sub")
}

///
pub fn sup() -> Scaffold(msg) {
  scaffold.regular("sup")
}

///
pub fn time() -> Scaffold(msg) {
  scaffold.regular("time")
}

///
pub fn u() -> Scaffold(msg) {
  scaffold.regular("u")
}

///
pub fn var() -> Scaffold(msg) {
  scaffold.regular("var")
}

///
pub fn wbr() -> ChildlessScaffold(msg) {
  scaffold.regular("wbr")
}

// HTML ELEMENTS: IMAGE AND MULTIMEDIA -----------------------------------------

///
pub fn area() -> ChildlessScaffold(msg) {
  scaffold.regular("area")
}

///
pub fn audio() -> Scaffold(msg) {
  scaffold.regular("audio")
}

///
pub fn img() -> ChildlessScaffold(msg) {
  scaffold.regular("img")
}

/// Used with <area> elements to define an image map (a clickable link area).
///
pub fn map() -> Scaffold(msg) {
  scaffold.regular("map")
}

///
pub fn track() -> ChildlessScaffold(msg) {
  scaffold.regular("track")
}

///
pub fn video() -> Scaffold(msg) {
  scaffold.regular("video")
}

// HTML ELEMENTS: EMBEDDED CONTENT ---------------------------------------------

///
pub fn embed() -> ChildlessScaffold(msg) {
  scaffold.regular("embed")
}

///
pub fn iframe() -> ChildlessScaffold(msg) {
  scaffold.regular("iframe")
}

///
pub fn object() -> ChildlessScaffold(msg) {
  scaffold.regular("object")
}

///
pub fn picture() -> Scaffold(msg) {
  scaffold.regular("picture")
}

///
pub fn portal() -> ChildlessScaffold(msg) {
  scaffold.regular("portal")
}

///
pub fn source() -> ChildlessScaffold(msg) {
  scaffold.regular("source")
}

// HTML ELEMENTS: SVG AND MATHML -----------------------------------------------

///
pub fn math() -> Scaffold(msg) {
  scaffold.namespaced(
    namespace: "http://www.w3.org/1998/Math/MathML",
    tag: "math",
  )
}

///
pub fn svg() -> Scaffold(msg) {
  scaffold.namespaced(namespace: "http://www.w3.org/2000/svg", tag: "svg")
}

// HTML ELEMENTS: SCRIPTING ----------------------------------------------------

///
pub fn canvas() -> ChildlessScaffold(msg) {
  scaffold.regular("canvas")
}

///
pub fn noscript() -> Scaffold(msg) {
  scaffold.regular("noscript")
}

///
pub fn script() -> TextContentScaffold(msg) {
  scaffold.regular("script")
}

// HTML ELEMENTS: DEMARCATING EDITS ---------------------------------------------

///
pub fn del() -> Scaffold(msg) {
  scaffold.regular("del")
}

///
pub fn ins() -> Scaffold(msg) {
  scaffold.regular("ins")
}

// HTML ELEMENTS: TABLE CONTENT ------------------------------------------------

///
pub fn caption() -> Scaffold(msg) {
  scaffold.regular("caption")
}

///
pub fn col() -> ChildlessScaffold(msg) {
  scaffold.regular("col")
}

///
pub fn colgroup() -> Scaffold(msg) {
  scaffold.regular("colgroup")
}

///
pub fn table() -> Scaffold(msg) {
  scaffold.regular("table")
}

///
pub fn tbody() -> Scaffold(msg) {
  scaffold.regular("tbody")
}

///
pub fn td() -> Scaffold(msg) {
  scaffold.regular("td")
}

///
pub fn tfoot() -> Scaffold(msg) {
  scaffold.regular("tfoot")
}

///
pub fn th() -> Scaffold(msg) {
  scaffold.regular("th")
}

///
pub fn thead() -> Scaffold(msg) {
  scaffold.regular("thead")
}

///
pub fn tr() -> Scaffold(msg) {
  scaffold.regular("tr")
}

// HTML ELEMENTS: FORMS --------------------------------------------------------

///
pub fn button() -> Scaffold(msg) {
  scaffold.regular("button")
}

///
pub fn datalist() -> Scaffold(msg) {
  scaffold.regular("datalist")
}

///
pub fn fieldset() -> Scaffold(msg) {
  scaffold.regular("fieldset")
}

///
pub fn form() -> Scaffold(msg) {
  scaffold.regular("form")
}

///
pub fn input() -> ChildlessScaffold(msg) {
  scaffold.regular("input")
}

///
pub fn label() -> Scaffold(msg) {
  scaffold.regular("label")
}

///
pub fn legend() -> Scaffold(msg) {
  scaffold.regular("legend")
}

///
pub fn meter() -> Scaffold(msg) {
  scaffold.regular("meter")
}

///
pub fn optgroup() -> Scaffold(msg) {
  scaffold.regular("optgroup")
}

///
pub fn option() -> TextContentScaffold(msg) {
  scaffold.regular("option")
}

///
pub fn output() -> Scaffold(msg) {
  scaffold.regular("output")
}

///
pub fn progress() -> Scaffold(msg) {
  scaffold.regular("progress")
}

///
pub fn select() -> Scaffold(msg) {
  scaffold.regular("select")
}

///
pub fn textarea() -> TextContentScaffold(msg) {
  scaffold.regular("textarea")
}

// HTML ELEMENTS: INTERACTIVE ELEMENTS -----------------------------------------

///
pub fn details() -> Scaffold(msg) {
  scaffold.regular("details")
}

///
pub fn dialog() -> Scaffold(msg) {
  scaffold.regular("dialog")
}

///
pub fn summary() -> Scaffold(msg) {
  scaffold.regular("summary")
}

// HTML ELEMENTS: WEB COMPONENTS -----------------------------------------------

///
pub fn slot() -> ChildlessScaffold(msg) {
  scaffold.regular("slot")
}

///
pub fn template() -> Scaffold(msg) {
  scaffold.regular("template")
}
