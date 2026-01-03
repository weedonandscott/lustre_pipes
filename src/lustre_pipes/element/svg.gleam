// IMPORTS ---------------------------------------------------------------------

import lustre/element/svg
import lustre_pipes/internal/scaffold.{type ChildlessScaffold, type Scaffold}

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
pub fn animate() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "animate")
}

///
pub fn animate_motion() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "animateMotion")
}

///
pub fn animate_transform() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "animateTransform")
}

///
pub fn mpath() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "mpath")
}

///
pub fn set() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "set")
}

// SVG ELEMENTS: BASIC SHAPES --------------------------------------------------

///
pub fn circle() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "circle")
}

///
pub fn ellipse() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "ellipse")
}

///
pub fn line() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "line")
}

///
pub fn polygon() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "polygon")
}

///
pub fn polyline() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "polyline")
}

///
pub fn rect() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "rect")
}

// SVG ELEMENTS: CONTAINER ELEMENTS --------------------------------------------

///
pub fn a() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "a")
}

///
pub fn defs() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "defs")
}

///
pub fn g() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "g")
}

///
pub fn marker() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "marker")
}

///
pub fn mask() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "mask")
}

///
pub fn missing_glyph() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "missing-glyph")
}

///
pub fn pattern() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "pattern")
}

///
pub fn svg() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "svg")
}

///
pub fn switch() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "switch")
}

///
pub fn symbol() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "symbol")
}

///
pub fn view() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "view")
}

// SVG ELEMENTS: DESCRIPTIVE ELEMENTS ------------------------------------------

///
pub fn desc() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "desc")
}

///
pub fn metadata() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "metadata")
}

///
pub fn title() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "title")
}

// SVG ELEMENTS: FILTER EFFECTS ------------------------------------------------

///
pub fn filter() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "filter")
}

///
pub fn fe_blend() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feBlend")
}

///
pub fn fe_color_matrix() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feColorMatrix")
}

///
pub fn fe_component_transfer() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feComponentTransfer")
}

///
pub fn fe_composite() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feComposite")
}

///
pub fn fe_convolve_matrix() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feConvolveMatrix")
}

///
pub fn fe_diffuse_lighting() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feDiffuseLighting")
}

///
pub fn fe_displacement_map() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feDisplacementMap")
}

///
pub fn fe_drop_shadow() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feDropShadow")
}

///
pub fn fe_flood() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feFlood")
}

///
pub fn fe_func_a() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feFuncA")
}

///
pub fn fe_func_b() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feFuncB")
}

///
pub fn fe_func_g() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feFuncG")
}

///
pub fn fe_func_r() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feFuncR")
}

///
pub fn fe_gaussian_blur() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feGaussianBlur")
}

///
pub fn fe_image() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feImage")
}

///
pub fn fe_merge() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feMerge")
}

///
pub fn fe_merge_node() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feMergeNode")
}

///
pub fn fe_morphology() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feMorphology")
}

///
pub fn fe_offset() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feOffset")
}

///
pub fn fe_specular_lighting() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feSpecularLighting")
}

///
pub fn fe_tile() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feTile")
}

///
pub fn fe_turbulence() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feTurbulence")
}

// SVG ELEMENTS: GRADIENT ELEMENTS ---------------------------------------------

///
pub fn linear_gradient() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "linearGradient")
}

///
pub fn radial_gradient() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "radialGradient")
}

///
pub fn stop() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "stop")
}

// SVG ELEMENTS: GRAPHICAL ELEMENTS --------------------------------------------

///
pub fn image() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "image")
}

///
pub fn path() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "path")
}

///
pub fn text() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "text")
}

///
pub fn use_() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "use")
}

// SVG ELEMENTS: LIGHTING ELEMENTS ---------------------------------------------

///
pub fn fe_distant_light() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feDistantLight")
}

///
pub fn fe_point_light() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "fePointLight")
}

///
pub fn fe_spot_light() -> ChildlessScaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "feSpotLight")
}

// SVG ELEMENTS: NEVER-RENDERED ELEMENTS ---------------------------------------

///
pub fn clip_path() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "clipPath")
}

///
pub fn script() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "script")
}

///
pub fn style() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "style")
}

// SVG ELEMENTS: RENDERABLE ELEMENTS -------------------------------------------

///
pub fn foreign_object() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "foreignObject")
}

///
pub fn text_path() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "textPath")
}

///
pub fn tspan() -> Scaffold(msg, scaffold.NoAttrs) {
  scaffold.namespaced(namespace:, tag: "tspan")
}
