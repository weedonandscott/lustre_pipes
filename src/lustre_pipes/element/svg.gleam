// IMPORTS ---------------------------------------------------------------------

import lustre/element/svg
import lustre_pipes/element

// CONSTANTS -------------------------------------------------------------------

/// The SVG namespace URI: `"http://www.w3.org/2000/svg"`. You might use this
/// with [`element.namespaced`](../element.html#namespaced) to create elements
/// in the SVG namespace not provided here.
///
pub const namespace = svg.namespace

// The doc comments (and order) for functions in this module are taken from the
// MDN Element reference:
//
//   https://developer.mozilla.org/en-US/docs/Web/SVG/Element
//

// SVG ELEMENTS: ANIMATION ELEMENTS --------------------------------------------

///
pub fn animate() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "animate"), [])
}

///
pub fn animate_motion() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "animateMotion"), [])
}

///
pub fn animate_transform() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "animateTransform"), [])
}

///
pub fn mpath() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "mpath"), [])
}

///
pub fn set() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "set"), [])
}

// SVG ELEMENTS: BASIC SHAPES --------------------------------------------------

///
pub fn circle() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "circle"), [])
}

///
pub fn ellipse() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "ellipse"), [])
}

///
pub fn line() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "line"), [])
}

///
pub fn polygon() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "polygon"), [])
}

///
pub fn polyline() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "polyline"), [])
}

///
pub fn rect() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "rect"), [])
}

// SVG ELEMENTS: CONTAINER ELEMENTS --------------------------------------------

///
pub fn a() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "a"), [])
}

///
pub fn defs() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "defs"), [])
}

///
pub fn g() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "g"), [])
}

///
pub fn marker() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "marker"), [])
}

///
pub fn mask() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "mask"), [])
}

///
pub fn missing_glyph() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "missing-glyph"), [])
}

///
pub fn pattern() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "pattern"), [])
}

///
pub fn svg() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "svg"), [])
}

///
pub fn switch() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "switch"), [])
}

///
pub fn symbol() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "symbol"), [])
}

///
pub fn view() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "view"), [])
}

// SVG ELEMENTS: DESCRIPTIVE ELEMENTS ------------------------------------------

///
pub fn desc() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "desc"), [])
}

///
pub fn metadata() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "metadata"), [])
}

///
pub fn title() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "title"), [])
}

// SVG ELEMENTS: FILTER EFFECTS ------------------------------------------------

///
pub fn filter() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "filter"), [])
}

///
pub fn fe_blend() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feBlend"), [])
}

///
pub fn fe_color_matrix() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feColorMatrix"), [])
}

///
pub fn fe_component_transfer() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feComponentTransfer"), [])
}

///
pub fn fe_composite() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feComposite"), [])
}

///
pub fn fe_convolve_matrix() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feConvolveMatrix"), [])
}

///
pub fn fe_diffuse_lighting() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feDiffuseLighting"), [])
}

///
pub fn fe_displacement_map() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feDisplacementMap"), [])
}

///
pub fn fe_drop_shadow() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feDropShadow"), [])
}

///
pub fn fe_flood() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feFlood"), [])
}

///
pub fn fe_func_a() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feFuncA"), [])
}

///
pub fn fe_func_b() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feFuncB"), [])
}

///
pub fn fe_func_g() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feFuncG"), [])
}

///
pub fn fe_func_r() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feFuncR"), [])
}

///
pub fn fe_gaussian_blur() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feGaussianBlur"), [])
}

///
pub fn fe_image() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feImage"), [])
}

///
pub fn fe_merge() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feMerge"), [])
}

///
pub fn fe_merge_node() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feMergeNode"), [])
}

///
pub fn fe_morphology() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feMorphology"), [])
}

///
pub fn fe_offset() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feOffset"), [])
}

///
pub fn fe_specular_lighting() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feSpecularLighting"), [])
}

///
pub fn fe_tile() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feTile"), [])
}

///
pub fn fe_turbulence() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feTurbulence"), [])
}

// SVG ELEMENTS: GRADIENT ELEMENTS ---------------------------------------------

///
pub fn linear_gradient() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "linearGradient"), [])
}

///
pub fn radial_gradient() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "radialGradient"), [])
}

///
pub fn stop() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "stop"), [])
}

// SVG ELEMENTS: GRAPHICAL ELEMENTS --------------------------------------------

///
pub fn image() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "image"), [])
}

///
pub fn path() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "path"), [])
}

///
pub fn text() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "text"), [])
}

///
pub fn use_() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "use"), [])
}

// SVG ELEMENTS: LIGHTING ELEMENTS ---------------------------------------------

///
pub fn fe_distant_light() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feDistantLight"), [])
}

///
pub fn fe_point_light() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "fePointLight"), [])
}

///
pub fn fe_spot_light() -> element.ChildlessScaffold(msg) {
  #(element.Namespaced(namespace:, tag: "feSpotLight"), [])
}

// SVG ELEMENTS: NEVER-RENDERED ELEMENTS ---------------------------------------

///
pub fn clip_path() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "clipPath"), [])
}

///
pub fn script() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "script"), [])
}

///
pub fn style() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "style"), [])
}

// SVG ELEMENTS: RENDERABLE ELEMENTS -------------------------------------------

///
pub fn foreign_object() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "foreignObject"), [])
}

///
pub fn text_path() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "textPath"), [])
}

///
pub fn tspan() -> element.Scaffold(msg) {
  #(element.Namespaced(namespace:, tag: "tspan"), [])
}
