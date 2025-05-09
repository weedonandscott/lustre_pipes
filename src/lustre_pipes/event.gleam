// IMPORTS ---------------------------------------------------------------------

import gleam/dynamic/decode.{type Decoder}

import lustre/event

import lustre_pipes/attribute.{type Attribute}
import lustre_pipes/element

// EFFECTS ---------------------------------------------------------------------

/// Dispatches a custom message from a Lustre component. This lets components
/// communicate with their parents the same way native DOM elements do.
///
/// Any JSON-serialisable payload can be attached as additional data for any
/// event listeners to decode. This data will be on the event's `detail` property.
///
pub fn emit(event: String, data) {
  event.emit(event, data)
}

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
  scaffold: element.Scaffold(msg),
  name: String,
  handler: Decoder(msg),
) -> element.Scaffold(msg) {
  scaffold
  |> attribute.add(event.on(name, handler))
}

/// Indicate that the event should have its default behaviour cancelled. This is
/// equivalent to calling `event.preventDefault()` in JavaScript.
///
pub fn prevent_default(event: Attribute(msg)) -> Attribute(msg) {
  event.prevent_default(event)
}

/// Indicate that the event should not propagate to parent elements. This is
/// equivalent to calling `event.stopPropagation()` in JavaScript.
///
pub fn stop_propagation(event: Attribute(msg)) -> Attribute(msg) {
  event.stop_propagation(event)
}

/// Use Lustre's built-in event debouncing to wait a delay after a burst of
/// events before dispatching the most recent one. You can visualise debounced
/// events like so:
///
/// ```
///  original : --a-b-cd--e----------f--------
/// debounced : ---------------e----------f---
/// ```
///
/// This is particularly useful for server components where many events in quick
/// succession can introduce problems because of network latency.
///
/// > **Note**: debounced events inherently introduce latency. Try to consider
/// > typical interaction patterns and experiment with different delays to balance
/// > responsiveness and update frequency.
///
pub fn debounce(event: Attribute(msg), delay: Int) -> Attribute(msg) {
  event.debounce(event, delay)
}

/// Use Lustre's built-in event throttling to restrict the number of events
/// that can be dispatched in a given time period. You can visualise throttled
/// events like so:
///
/// ```
/// original : --a-b-cd--e----------f--------
/// throttled : -a------ e----------e--------
/// ```
///
/// This is particularly useful for server components where many events in quick
/// succession can introduce problems because of network latency.
///
/// > **Note**: throttled events inherently reduce precision. Try to consider
/// > typical interaction patterns and experiment with different delays to balance
/// > responsiveness and update frequency.
///
pub fn throttle(event: Attribute(msg), delay: Int) -> Attribute(msg) {
  event.throttle(event, delay)
}

// MOUSE EVENTS ----------------------------------------------------------------

///
pub fn on_click(
  scaffold: element.Scaffold(msg),
  msg: msg,
) -> element.Scaffold(msg) {
  scaffold
  |> attribute.add(event.on_click(msg))
}

///
pub fn on_mouse_down(
  scaffold: element.Scaffold(msg),
  msg: msg,
) -> element.Scaffold(msg) {
  scaffold
  |> attribute.add(event.on_mouse_down(msg))
}

///
pub fn on_mouse_up(
  scaffold: element.Scaffold(msg),
  msg: msg,
) -> element.Scaffold(msg) {
  scaffold
  |> attribute.add(event.on_mouse_up(msg))
}

///
pub fn on_mouse_enter(
  scaffold: element.Scaffold(msg),
  msg: msg,
) -> element.Scaffold(msg) {
  scaffold
  |> attribute.add(event.on_mouse_enter(msg))
}

///
pub fn on_mouse_leave(
  scaffold: element.Scaffold(msg),
  msg: msg,
) -> element.Scaffold(msg) {
  scaffold
  |> attribute.add(event.on_mouse_leave(msg))
}

///
pub fn on_mouse_over(
  scaffold: element.Scaffold(msg),
  msg: msg,
) -> element.Scaffold(msg) {
  scaffold
  |> attribute.add(event.on_mouse_over(msg))
}

///
pub fn on_mouse_out(
  scaffold: element.Scaffold(msg),
  msg: msg,
) -> element.Scaffold(msg) {
  scaffold
  |> attribute.add(event.on_mouse_out(msg))
}

// KEYBOARD EVENTS -------------------------------------------------------------

/// Listens for key presses on an element, and dispatches a message with the
/// current key being pressed.
///
pub fn on_keypress(
  scaffold: element.Scaffold(msg),
  msg: fn(String) -> msg,
) -> element.Scaffold(msg) {
  scaffold
  |> attribute.add(event.on_keypress(msg))
}

/// Listens for key down events on an element, and dispatches a message with the
/// current key being pressed.
///
pub fn on_keydown(
  scaffold: element.Scaffold(msg),
  msg: fn(String) -> msg,
) -> element.Scaffold(msg) {
  scaffold
  |> attribute.add(event.on_keydown(msg))
}

/// Listens for key up events on an element, and dispatches a message with the
/// current key being released.
///
pub fn on_keyup(
  scaffold: element.Scaffold(msg),
  msg: fn(String) -> msg,
) -> element.Scaffold(msg) {
  scaffold
  |> attribute.add(event.on_keyup(msg))
}

// FORM EVENTS -----------------------------------------------------------------

/// Listens for input events on elements such as `<input>`, `<textarea>` and
/// `<select>`. This handler automatically decodes the string value of the input
/// and passes it to the given message function. This is commonly used to
/// implement [controlled inputs](https://github.com/lustre-labs/lustre/blob/main/pages/hints/controlled-vs-uncontrolled-inputs.md).
///
pub fn on_input(
  scaffold: element.Scaffold(msg),
  msg: fn(String) -> msg,
) -> element.Scaffold(msg) {
  scaffold
  |> attribute.add(event.on_input(msg))
}

/// Listens for change events on elements such as `<input>`, `<textarea>` and
/// `<select>`. This handler automatically decodes the string value of the input
/// and passes it to the given message function. This is commonly used to
/// implement [controlled inputs](https://github.com/lustre-labs/lustre/blob/main/pages/hints/controlled-vs-uncontrolled-inputs.md).
///
pub fn on_change(
  scaffold: element.Scaffold(msg),
  msg: fn(String) -> msg,
) -> element.Scaffold(msg) {
  scaffold
  |> attribute.add(event.on_change(msg))
}

/// Listens for change events on `<input type="checkbox">` elements. This handler
/// automatically decodes the boolean value of the checkbox and passes it to
/// the given message function. This is commonly used to implement
/// [controlled inputs](https://github.com/lustre-labs/lustre/blob/main/pages/hints/controlled-vs-uncontrolled-inputs.md).
///
pub fn on_check(
  scaffold: element.Scaffold(msg),
  msg: fn(Bool) -> msg,
) -> element.Scaffold(msg) {
  scaffold
  |> attribute.add(event.on_check(msg))
}

/// Listens for submit events on a `<form>` element and receives a list of
/// name/value pairs for each field in the form. Files are not included in this
/// list: if you need them, you can write your own handler for the `"submit"`
/// event and decode the non-standard `detail.formData` property manually.
///
/// This handler is best paired with the [`formal`](https://hexdocs.pm/formal/)
/// package which lets you process form submissions in a type-safe way.
///
/// This will automatically call [`prevent_default`](#prevent_default) to stop
/// the browser's native form submission. In a Lustre app you'll want to handle
/// that yourself as an [`Effect`](./effect.html#Effect).
///
pub fn on_submit(
  scaffold: element.Scaffold(msg),
  msg: fn(List(#(String, String))) -> msg,
) -> element.Scaffold(msg) {
  scaffold
  |> attribute.add(event.on_submit(msg))
}

// FOCUS EVENTS ----------------------------------------------------------------

pub fn on_focus(
  scaffold: element.Scaffold(msg),
  msg: msg,
) -> element.Scaffold(msg) {
  scaffold
  |> attribute.add(event.on_focus(msg))
}

pub fn on_blur(
  scaffold: element.Scaffold(msg),
  msg: msg,
) -> element.Scaffold(msg) {
  scaffold
  |> attribute.add(event.on_blur(msg))
}
