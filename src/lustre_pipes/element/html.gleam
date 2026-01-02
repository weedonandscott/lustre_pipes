// IMPORTS ---------------------------------------------------------------------

import lustre/element/html

import lustre_pipes/element

// HTML ELEMENTS: MAIN ROOT ----------------------------------------------------

///
pub fn html() -> element.Scaffold(msg) {
  #(element.Regular("html"), [])
}

pub fn text(content: String) {
  html.text(content)
}

// HTML ELEMENTS: DOCUMENT METADATA --------------------------------------------

///
pub fn base() -> element.ChildlessScaffold(msg) {
  #(element.Regular("base"), [])
}

///
pub fn head() -> element.Scaffold(msg) {
  #(element.Regular("head"), [])
}

///
pub fn link() -> element.ChildlessScaffold(msg) {
  #(element.Regular("link"), [])
}

///
pub fn meta() -> element.ChildlessScaffold(msg) {
  #(element.Regular("meta"), [])
}

///
pub fn style() -> element.TextContentScaffold(msg) {
  #(element.Regular("style"), [])
}

///
pub fn title() -> element.TextContentScaffold(msg) {
  #(element.Regular("title"), [])
}

// HTML ELEMENTS: SECTIONING ROOT -----------------------------------------------

///
pub fn body() -> element.Scaffold(msg) {
  #(element.Regular("body"), [])
}

// HTML ELEMENTS: CONTENT SECTIONING -------------------------------------------

///
pub fn address() -> element.Scaffold(msg) {
  #(element.Regular("address"), [])
}

///
pub fn article() -> element.Scaffold(msg) {
  #(element.Regular("article"), [])
}

///
pub fn aside() -> element.Scaffold(msg) {
  #(element.Regular("aside"), [])
}

///
pub fn footer() -> element.Scaffold(msg) {
  #(element.Regular("footer"), [])
}

///
pub fn header() -> element.Scaffold(msg) {
  #(element.Regular("header"), [])
}

///
pub fn h1() -> element.Scaffold(msg) {
  #(element.Regular("h1"), [])
}

///
pub fn h2() -> element.Scaffold(msg) {
  #(element.Regular("h2"), [])
}

///
pub fn h3() -> element.Scaffold(msg) {
  #(element.Regular("h3"), [])
}

///
pub fn h4() -> element.Scaffold(msg) {
  #(element.Regular("h4"), [])
}

///
pub fn h5() -> element.Scaffold(msg) {
  #(element.Regular("h5"), [])
}

///
pub fn h6() -> element.Scaffold(msg) {
  #(element.Regular("h6"), [])
}

///
pub fn hgroup() -> element.Scaffold(msg) {
  #(element.Regular("hgroup"), [])
}

///
pub fn main() -> element.Scaffold(msg) {
  #(element.Regular("main"), [])
}

///
pub fn nav() -> element.Scaffold(msg) {
  #(element.Regular("nav"), [])
}

///
pub fn section() -> element.Scaffold(msg) {
  #(element.Regular("section"), [])
}

///
pub fn search() -> element.Scaffold(msg) {
  #(element.Regular("search"), [])
}

// HTML ELEMENTS: TEXT CONTENT -------------------------------------------------

///
pub fn blockquote() -> element.Scaffold(msg) {
  #(element.Regular("blockquote"), [])
}

///
pub fn dd() -> element.Scaffold(msg) {
  #(element.Regular("dd"), [])
}

///
pub fn div() -> element.Scaffold(msg) {
  #(element.Regular("div"), [])
}

///
pub fn dl() -> element.Scaffold(msg) {
  #(element.Regular("dl"), [])
}

///
pub fn dt() -> element.Scaffold(msg) {
  #(element.Regular("dt"), [])
}

///
pub fn figcaption() -> element.Scaffold(msg) {
  #(element.Regular("figcaption"), [])
}

///
pub fn figure() -> element.Scaffold(msg) {
  #(element.Regular("figure"), [])
}

///
pub fn hr() -> element.ChildlessScaffold(msg) {
  #(element.Regular("hr"), [])
}

///
pub fn li() -> element.Scaffold(msg) {
  #(element.Regular("li"), [])
}

///
pub fn menu() -> element.Scaffold(msg) {
  #(element.Regular("menu"), [])
}

///
pub fn ol() -> element.Scaffold(msg) {
  #(element.Regular("ol"), [])
}

///
pub fn p() -> element.Scaffold(msg) {
  #(element.Regular("p"), [])
}

///
pub fn pre() -> element.Scaffold(msg) {
  #(element.Regular("pre"), [])
}

///
pub fn ul() -> element.Scaffold(msg) {
  #(element.Regular("ul"), [])
}

// HTML ELEMENTS: INLINE TEXT SEMANTICS ----------------------------------------

///
pub fn a() -> element.Scaffold(msg) {
  #(element.Regular("a"), [])
}

///
pub fn abbr() -> element.Scaffold(msg) {
  #(element.Regular("abbr"), [])
}

///
pub fn b() -> element.Scaffold(msg) {
  #(element.Regular("b"), [])
}

///
pub fn bdi() -> element.Scaffold(msg) {
  #(element.Regular("bdi"), [])
}

///
pub fn bdo() -> element.Scaffold(msg) {
  #(element.Regular("bdo"), [])
}

///
pub fn br() -> element.ChildlessScaffold(msg) {
  #(element.Regular("br"), [])
}

///
pub fn cite() -> element.Scaffold(msg) {
  #(element.Regular("cite"), [])
}

///
pub fn code() -> element.Scaffold(msg) {
  #(element.Regular("code"), [])
}

///
pub fn data() -> element.Scaffold(msg) {
  #(element.Regular("data"), [])
}

///
pub fn dfn() -> element.Scaffold(msg) {
  #(element.Regular("dfn"), [])
}

///
pub fn em() -> element.Scaffold(msg) {
  #(element.Regular("em"), [])
}

///
pub fn i() -> element.Scaffold(msg) {
  #(element.Regular("i"), [])
}

///
pub fn kbd() -> element.Scaffold(msg) {
  #(element.Regular("kbd"), [])
}

///
pub fn mark() -> element.Scaffold(msg) {
  #(element.Regular("mark"), [])
}

///
pub fn q() -> element.Scaffold(msg) {
  #(element.Regular("q"), [])
}

///
pub fn rp() -> element.Scaffold(msg) {
  #(element.Regular("rp"), [])
}

///
pub fn rt() -> element.Scaffold(msg) {
  #(element.Regular("rt"), [])
}

///
pub fn ruby() -> element.Scaffold(msg) {
  #(element.Regular("ruby"), [])
}

///
pub fn s() -> element.Scaffold(msg) {
  #(element.Regular("s"), [])
}

///
pub fn samp() -> element.Scaffold(msg) {
  #(element.Regular("samp"), [])
}

///
pub fn small() -> element.Scaffold(msg) {
  #(element.Regular("small"), [])
}

///
pub fn span() -> element.Scaffold(msg) {
  #(element.Regular("span"), [])
}

///
pub fn strong() -> element.Scaffold(msg) {
  #(element.Regular("strong"), [])
}

///
pub fn sub() -> element.Scaffold(msg) {
  #(element.Regular("sub"), [])
}

///
pub fn sup() -> element.Scaffold(msg) {
  #(element.Regular("sup"), [])
}

///
pub fn time() -> element.Scaffold(msg) {
  #(element.Regular("time"), [])
}

///
pub fn u() -> element.Scaffold(msg) {
  #(element.Regular("u"), [])
}

///
pub fn var() -> element.Scaffold(msg) {
  #(element.Regular("var"), [])
}

///
pub fn wbr() -> element.ChildlessScaffold(msg) {
  #(element.Regular("wbr"), [])
}

// HTML ELEMENTS: IMAGE AND MULTIMEDIA -----------------------------------------

///
pub fn area() -> element.ChildlessScaffold(msg) {
  #(element.Regular("area"), [])
}

///
pub fn audio() -> element.Scaffold(msg) {
  #(element.Regular("audio"), [])
}

///
pub fn img() -> element.ChildlessScaffold(msg) {
  #(element.Regular("img"), [])
}

/// Used with <area> elements to define an image map (a clickable link area).
///
pub fn map() -> element.Scaffold(msg) {
  #(element.Regular("map"), [])
}

///
pub fn track() -> element.ChildlessScaffold(msg) {
  #(element.Regular("track"), [])
}

///
pub fn video() -> element.Scaffold(msg) {
  #(element.Regular("video"), [])
}

// HTML ELEMENTS: EMBEDDED CONTENT ---------------------------------------------

///
pub fn embed() -> element.ChildlessScaffold(msg) {
  #(element.Regular("embed"), [])
}

///
pub fn iframe() -> element.ChildlessScaffold(msg) {
  #(element.Regular("iframe"), [])
}

///
pub fn object() -> element.ChildlessScaffold(msg) {
  #(element.Regular("object"), [])
}

///
pub fn picture() -> element.Scaffold(msg) {
  #(element.Regular("picture"), [])
}

///
pub fn portal() -> element.ChildlessScaffold(msg) {
  #(element.Regular("portal"), [])
}

///
pub fn source() -> element.ChildlessScaffold(msg) {
  #(element.Regular("source"), [])
}

// HTML ELEMENTS: SVG AND MATHML -----------------------------------------------

///
pub fn math() -> element.Scaffold(msg) {
  #(
    element.Namespaced(
      namespace: "http://www.w3.org/1998/Math/MathML",
      tag: "math",
    ),
    [],
  )
}

///
pub fn svg() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace: "http://www.w3.org/2000/svg", tag: "svg"), [])
}

// HTML ELEMENTS: SCRIPTING ----------------------------------------------------

///
pub fn canvas() -> element.ChildlessScaffold(msg) {
  #(element.Regular("canvas"), [])
}

///
pub fn noscript() -> element.Scaffold(msg) {
  #(element.Regular("noscript"), [])
}

///
pub fn script() -> element.TextContentScaffold(msg) {
  #(element.Regular("script"), [])
}

// HTML ELEMENTS: DEMARCATING EDITS ---------------------------------------------

///
pub fn del() -> element.Scaffold(msg) {
  #(element.Regular("del"), [])
}

///
pub fn ins() -> element.Scaffold(msg) {
  #(element.Regular("ins"), [])
}

// HTML ELEMENTS: TABLE CONTENT ------------------------------------------------

///
pub fn caption() -> element.Scaffold(msg) {
  #(element.Regular("caption"), [])
}

///
pub fn col() -> element.ChildlessScaffold(msg) {
  #(element.Regular("col"), [])
}

///
pub fn colgroup() -> element.Scaffold(msg) {
  #(element.Regular("colgroup"), [])
}

///
pub fn table() -> element.Scaffold(msg) {
  #(element.Regular("table"), [])
}

///
pub fn tbody() -> element.Scaffold(msg) {
  #(element.Regular("tbody"), [])
}

///
pub fn td() -> element.Scaffold(msg) {
  #(element.Regular("td"), [])
}

///
pub fn tfoot() -> element.Scaffold(msg) {
  #(element.Regular("tfoot"), [])
}

///
pub fn th() -> element.Scaffold(msg) {
  #(element.Regular("th"), [])
}

///
pub fn thead() -> element.Scaffold(msg) {
  #(element.Regular("thead"), [])
}

///
pub fn tr() -> element.Scaffold(msg) {
  #(element.Regular("tr"), [])
}

// HTML ELEMENTS: FORMS --------------------------------------------------------

///
pub fn button() -> element.Scaffold(msg) {
  #(element.Regular("button"), [])
}

///
pub fn datalist() -> element.Scaffold(msg) {
  #(element.Regular("datalist"), [])
}

///
pub fn fieldset() -> element.Scaffold(msg) {
  #(element.Regular("fieldset"), [])
}

///
pub fn form() -> element.Scaffold(msg) {
  #(element.Regular("form"), [])
}

///
pub fn input() -> element.ChildlessScaffold(msg) {
  #(element.Regular("input"), [])
}

///
pub fn label() -> element.Scaffold(msg) {
  #(element.Regular("label"), [])
}

///
pub fn legend() -> element.Scaffold(msg) {
  #(element.Regular("legend"), [])
}

///
pub fn meter() -> element.Scaffold(msg) {
  #(element.Regular("meter"), [])
}

///
pub fn optgroup() -> element.Scaffold(msg) {
  #(element.Regular("optgroup"), [])
}

///
pub fn option() -> element.TextContentScaffold(msg) {
  #(element.Regular("option"), [])
}

///
pub fn output() -> element.Scaffold(msg) {
  #(element.Regular("output"), [])
}

///
pub fn progress() -> element.Scaffold(msg) {
  #(element.Regular("progress"), [])
}

///
pub fn select() -> element.Scaffold(msg) {
  #(element.Regular("select"), [])
}

///
pub fn textarea() -> element.TextContentScaffold(msg) {
  #(element.Regular("textarea"), [])
}

// HTML ELEMENTS: INTERACTIVE ELEMENTS -----------------------------------------

///
pub fn details() -> element.Scaffold(msg) {
  #(element.Regular("details"), [])
}

///
pub fn dialog() -> element.Scaffold(msg) {
  #(element.Regular("dialog"), [])
}

///
pub fn summary() -> element.Scaffold(msg) {
  #(element.Regular("summary"), [])
}

// HTML ELEMENTS: WEB COMPONENTS -----------------------------------------------

///
pub fn slot() -> element.ChildlessScaffold(msg) {
  #(element.Regular("slot"), [])
}

///
pub fn template() -> element.Scaffold(msg) {
  #(element.Regular("template"), [])
}
