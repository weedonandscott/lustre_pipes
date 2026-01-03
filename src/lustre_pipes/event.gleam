// IMPORTS ---------------------------------------------------------------------

import gleam/dynamic/decode.{type Decoder}
import lustre_pipes/internal/scaffold.{type Scaffold}

import lustre/event

import lustre_pipes/attribute.{type Attribute}

// TYPES -----------------------------------------------------------------------

/// A custom event handler that can be used to conditionally stop propagation
/// or prevent the default behaviour of an event. You can construct these handlers
/// with the [`handler`](#handler) function and use them with the [`advanced`](#advanced)
/// event listener.
///
pub type Handler(msg) =
  event.Handler(msg)

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
  name: String,
  handler: Decoder(msg),
) -> fn(Scaffold(msg, last_attr)) -> Scaffold(msg, scaffold.Event) {
  fn(scaffold) {
    scaffold
    |> scaffold.attach_event(event.on(name, handler))
  }
}

/// Listens for the given event and then runs the given decoder on the event
/// object. This decoder is capable of _conditionally_ stopping propagation or
/// preventing the default behaviour of the event by returning a `Handler` record
/// with the appropriate flags set. This makes it possible to write event handlers
/// for more-advanced scenarios such as handling specific key presses.
///
/// > **Note**: it is not possible to conditionally stop propagation or prevent
/// > the default behaviour of an event when using _server components_. Your event
/// > handler runs on the server, far away from the browser!
///
/// > **Note**: if you are developing a server component, it is important to also
/// > use [`server_component.include`](./server_component.html#include) to state
/// > which properties of the event you need to be sent to the server.
///
pub fn advanced(
  name: String,
  handler: Decoder(Handler(msg)),
) -> fn(Scaffold(msg, last_attr)) -> Scaffold(msg, scaffold.Event) {
  fn(scaffold) {
    scaffold
    |> scaffold.attach_event(event.advanced(name, handler))
  }
}

/// Construct a [`Handler`](#Handler) that can be used with [`advanced`](#advanced)
/// to conditionally stop propagation or prevent the default behaviour of an event.
///
pub fn handler(
  dispatch message: msg,
  prevent_default prevent_default: Bool,
  stop_propagation stop_propagation: Bool,
) -> Handler(msg) {
  event.handler(prevent_default:, stop_propagation:, dispatch: message)
}

pub fn with(
  scaffold: Scaffold(msg, to_attr),
  event_fn: fn(Scaffold(msg, to_attr)) -> Scaffold(msg, scaffold.Event),
  modifiers: fn(Attribute(msg)) -> Attribute(msg),
) -> Scaffold(msg, scaffold.Event) {
  scaffold
  |> event_fn
  |> scaffold.modify_latest_attr(modifiers)
}

pub fn with_many(
  scaffold: Scaffold(msg, to_attr),
  event_fn: fn(Scaffold(msg, to_attr)) -> Scaffold(msg, scaffold.Event),
  modifiers: List(fn(Attribute(msg)) -> Attribute(msg)),
) -> Scaffold(msg, scaffold.Event) {
  scaffold
  |> event_fn
  |> scaffold.modify_latest_attr_with_many(modifiers)
}

/// Indicate that the event should have its default behaviour cancelled. This is
/// equivalent to calling `event.preventDefault()` in JavaScript.
///
/// > **Note**: this will override the conditional behaviour of an event handler
/// > created with [`advanced`](#advanced).
///
pub const prevent_default = event.prevent_default

/// Indicate that the event should not propagate to parent elements. This is
/// equivalent to calling `event.stopPropagation()` in JavaScript.
///
/// > **Note**: this will override the conditional behaviour of an event handler
/// > created with [`advanced`](#advanced).
///
pub const stop_propagation = event.stop_propagation

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
pub fn debounce(delay: Int) {
  fn(event) { event.debounce(event, delay) }
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
pub fn throttle(delay: Int) {
  fn(event) { event.throttle(event, delay) }
}

// MOUSE EVENTS ----------------------------------------------------------------

///
pub fn on_click(
  msg: msg,
) -> fn(Scaffold(msg, last_attr)) -> Scaffold(msg, scaffold.Event) {
  fn(scaffold) {
    scaffold
    |> scaffold.attach_event(event.on_click(msg))
  }
}

///
pub fn on_mouse_down(
  msg: msg,
) -> fn(Scaffold(msg, last_attr)) -> Scaffold(msg, scaffold.Event) {
  fn(scaffold) {
    scaffold
    |> scaffold.attach_event(event.on_mouse_down(msg))
  }
}

///
pub fn on_mouse_up(
  msg: msg,
) -> fn(Scaffold(msg, last_attr)) -> Scaffold(msg, scaffold.Event) {
  fn(scaffold) {
    scaffold
    |> scaffold.attach_event(event.on_mouse_up(msg))
  }
}

///
pub fn on_mouse_enter(
  msg: msg,
) -> fn(Scaffold(msg, last_attr)) -> Scaffold(msg, scaffold.Event) {
  fn(scaffold) {
    scaffold
    |> scaffold.attach_event(event.on_mouse_enter(msg))
  }
}

///
pub fn on_mouse_leave(
  msg: msg,
) -> fn(Scaffold(msg, last_attr)) -> Scaffold(msg, scaffold.Event) {
  fn(scaffold) {
    scaffold
    |> scaffold.attach_event(event.on_mouse_leave(msg))
  }
}

///
pub fn on_mouse_over(
  msg: msg,
) -> fn(Scaffold(msg, last_attr)) -> Scaffold(msg, scaffold.Event) {
  fn(scaffold) {
    scaffold
    |> scaffold.attach_event(event.on_mouse_over(msg))
  }
}

///
pub fn on_mouse_out(
  msg: msg,
) -> fn(Scaffold(msg, last_attr)) -> Scaffold(msg, scaffold.Event) {
  fn(scaffold) {
    scaffold
    |> scaffold.attach_event(event.on_mouse_out(msg))
  }
}

// KEYBOARD EVENTS -------------------------------------------------------------

/// Listens for key presses on an element, and dispatches a message with the
/// current key being pressed.
///
pub fn on_keypress(
  msg: fn(String) -> msg,
) -> fn(Scaffold(msg, last_attr)) -> Scaffold(msg, scaffold.Event) {
  fn(scaffold) {
    scaffold
    |> scaffold.attach_event(event.on_keypress(msg))
  }
}

/// Listens for key down events on an element, and dispatches a message with the
/// current key being pressed.
///
pub fn on_keydown(
  msg: fn(String) -> msg,
) -> fn(Scaffold(msg, last_attr)) -> Scaffold(msg, scaffold.Event) {
  fn(scaffold) {
    scaffold
    |> scaffold.attach_event(event.on_keydown(msg))
  }
}

/// Listens for key up events on an element, and dispatches a message with the
/// current key being released.
///
pub fn on_keyup(
  msg: fn(String) -> msg,
) -> fn(Scaffold(msg, last_attr)) -> Scaffold(msg, scaffold.Event) {
  fn(scaffold) {
    scaffold
    |> scaffold.attach_event(event.on_keyup(msg))
  }
}

// FORM EVENTS -----------------------------------------------------------------

/// Listens for input events on elements such as `<input>`, `<textarea>` and
/// `<select>`. This handler automatically decodes the string value of the input
/// and passes it to the given message function. This is commonly used to
/// implement [controlled inputs](https://github.com/lustre-labs/lustre/blob/main/pages/hints/controlled-vs-uncontrolled-inputs.md).
///
pub fn on_input(
  msg: fn(String) -> msg,
) -> fn(Scaffold(msg, last_attr)) -> Scaffold(msg, scaffold.Event) {
  fn(scaffold) {
    scaffold
    |> scaffold.attach_event(event.on_input(msg))
  }
}

/// Listens for change events on elements such as `<input>`, `<textarea>` and
/// `<select>`. This handler automatically decodes the string value of the input
/// and passes it to the given message function. This is commonly used to
/// implement [controlled inputs](https://github.com/lustre-labs/lustre/blob/main/pages/hints/controlled-vs-uncontrolled-inputs.md).
///
pub fn on_change(
  msg: fn(String) -> msg,
) -> fn(Scaffold(msg, last_attr)) -> Scaffold(msg, scaffold.Event) {
  fn(scaffold) {
    scaffold
    |> scaffold.attach_event(event.on_change(msg))
  }
}

/// Listens for change events on `<input type="checkbox">` elements. This handler
/// automatically decodes the boolean value of the checkbox and passes it to
/// the given message function. This is commonly used to implement
/// [controlled inputs](https://github.com/lustre-labs/lustre/blob/main/pages/hints/controlled-vs-uncontrolled-inputs.md).
///
pub fn on_check(
  msg: fn(Bool) -> msg,
) -> fn(Scaffold(msg, last_attr)) -> Scaffold(msg, scaffold.Event) {
  fn(scaffold) {
    scaffold
    |> scaffold.attach_event(event.on_check(msg))
  }
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
  msg: fn(List(#(String, String))) -> msg,
) -> fn(Scaffold(msg, last_attr)) -> Scaffold(msg, scaffold.Event) {
  fn(scaffold) {
    scaffold
    |> scaffold.attach_event(event.on_submit(msg))
  }
}

// FOCUS EVENTS ----------------------------------------------------------------

pub fn on_focus(
  msg: msg,
) -> fn(Scaffold(msg, last_attr)) -> Scaffold(msg, scaffold.Event) {
  fn(scaffold) {
    scaffold
    |> scaffold.attach_event(event.on_focus(msg))
  }
}

pub fn on_blur(
  msg: msg,
) -> fn(Scaffold(msg, last_attr)) -> Scaffold(msg, scaffold.Event) {
  fn(scaffold) {
    scaffold
    |> scaffold.attach_event(event.on_blur(msg))
  }
}
