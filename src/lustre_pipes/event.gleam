// IMPORTS ---------------------------------------------------------------------

import gleam/dynamic.{type DecodeError, type Decoder, type Dynamic}
import gleam/result
import lustre/attribute
import lustre/event as lustre_event

import lustre_pipes/element.{type ElementScaffold}

// TYPES -----------------------------------------------------------------------

type Decoded(a) =
  Result(a, List(DecodeError))

// CUSTOM EVENTS ---------------------------------------------------------------

/// Listens for the given event and applies the handler to the event object. If
/// the handler returns an `Ok` the resulting message will be dispatched, otherwise
/// the event (and any decoding error) will be ignored.
///
/// The event name is typically an all-lowercase string such as "click" or "mousemove".
/// If you're listening for non-standard events (like those emitted by a custom
/// element) their event names might be slightly different.
///
pub fn on(
  scaffold: ElementScaffold(msg),
  name: String,
  handler: Decoder(msg),
) -> ElementScaffold(msg) {
  #(scaffold.0, [attribute.on(name, handler), ..scaffold.1])
}

// MOUSE EVENTS ----------------------------------------------------------------

///
pub fn on_click(
  scaffold: ElementScaffold(msg),
  msg: msg,
) -> ElementScaffold(msg) {
  use _ <- on(scaffold, "click")
  Ok(msg)
}

///
pub fn on_mouse_down(
  scaffold: ElementScaffold(msg),
  msg: msg,
) -> ElementScaffold(msg) {
  use _ <- on(scaffold, "mousedown")
  Ok(msg)
}

///
pub fn on_mouse_up(
  scaffold: ElementScaffold(msg),
  msg: msg,
) -> ElementScaffold(msg) {
  use _ <- on(scaffold, "mouseup")
  Ok(msg)
}

///
pub fn on_mouse_enter(
  scaffold: ElementScaffold(msg),
  msg: msg,
) -> ElementScaffold(msg) {
  use _ <- on(scaffold, "mouseenter")
  Ok(msg)
}

///
pub fn on_mouse_leave(
  scaffold: ElementScaffold(msg),
  msg: msg,
) -> ElementScaffold(msg) {
  use _ <- on(scaffold, "mouseleave")
  Ok(msg)
}

///
pub fn on_mouse_over(
  scaffold: ElementScaffold(msg),
  msg: msg,
) -> ElementScaffold(msg) {
  use _ <- on(scaffold, "mouseover")
  Ok(msg)
}

///
pub fn on_mouse_out(
  scaffold: ElementScaffold(msg),
  msg: msg,
) -> ElementScaffold(msg) {
  use _ <- on(scaffold, "mouseout")
  Ok(msg)
}

// KEYBOARD EVENTS -------------------------------------------------------------

/// Listens for key presses on an element, and dispatches a message with the
/// current key being pressed.
///
pub fn on_keypress(
  scaffold: ElementScaffold(msg),
  msg: fn(String) -> msg,
) -> ElementScaffold(msg) {
  use event <- on(scaffold, "keypress")

  event
  |> dynamic.field("key", dynamic.string)
  |> result.map(msg)
}

/// Listens for key down events on an element, and dispatches a message with the
/// current key being pressed.
///
pub fn on_keydown(
  scaffold: ElementScaffold(msg),
  msg: fn(String) -> msg,
) -> ElementScaffold(msg) {
  use event <- on(scaffold, "keydown")

  event
  |> dynamic.field("key", dynamic.string)
  |> result.map(msg)
}

/// Listens for key up events on an element, and dispatches a message with the
/// current key being released.
///
pub fn on_keyup(
  scaffold: ElementScaffold(msg),
  msg: fn(String) -> msg,
) -> ElementScaffold(msg) {
  use event <- on(scaffold, "keyup")

  event
  |> dynamic.field("key", dynamic.string)
  |> result.map(msg)
}

// FORM EVENTS -----------------------------------------------------------------

///
pub fn on_input(
  scaffold: ElementScaffold(msg),
  msg: fn(String) -> msg,
) -> ElementScaffold(msg) {
  use event <- on(scaffold, "input")

  value(event)
  |> result.map(msg)
}

pub fn on_check(
  scaffold: ElementScaffold(msg),
  msg: fn(Bool) -> msg,
) -> ElementScaffold(msg) {
  use event <- on(scaffold, "change")

  checked(event)
  |> result.map(msg)
}

/// Listens for the form's `submit` event, and dispatches the given message. This
/// will automatically call [`prevent_default`](#prevent_default) to stop the form
/// from submitting.
///
pub fn on_submit(
  scaffold: ElementScaffold(msg),
  msg: msg,
) -> ElementScaffold(msg) {
  use event <- on(scaffold, "submit")
  let _ = lustre_event.prevent_default(event)

  Ok(msg)
}

// FOCUS EVENTS ----------------------------------------------------------------

pub fn on_focus(
  scaffold: ElementScaffold(msg),
  msg: msg,
) -> ElementScaffold(msg) {
  use _ <- on(scaffold, "focus")
  Ok(msg)
}

pub fn on_blur(scaffold: ElementScaffold(msg), msg: msg) -> ElementScaffold(msg) {
  use _ <- on(scaffold, "blur")
  Ok(msg)
}

// DECODERS --------------------------------------------------------------------

/// Decoding an input element's `value` is such a common operation that we have
/// a dedicated decoder for it. This attempts to decoder `event.target.value` as
/// a string.
///
pub fn value(event: Dynamic) -> Decoded(String) {
  event
  |> dynamic.field("target", dynamic.field("value", dynamic.string))
}

/// Similar to [`value`](#value), decoding a checkbox's `checked` state is common
/// enough to warrant a dedicated decoder. This attempts to decode
/// `event.target.checked` as a boolean.
///
pub fn checked(event: Dynamic) -> Decoded(Bool) {
  event
  |> dynamic.field("target", dynamic.field("checked", dynamic.bool))
}

/// Decodes the mouse position from any event that has a `clientX` and `clientY`
/// property.
///
pub fn mouse_position(event: Dynamic) -> Decoded(#(Float, Float)) {
  use x <- result.then(dynamic.field("clientX", dynamic.float)(event))
  use y <- result.then(dynamic.field("clientY", dynamic.float)(event))

  Ok(#(x, y))
}
