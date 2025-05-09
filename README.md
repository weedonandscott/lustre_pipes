# Lustre Pipes

[![Package Version](https://img.shields.io/hexpm/v/lustre_pipes)](https://hex.pm/packages/lustre_pipes)
[![Hex Docs](https://img.shields.io/badge/hex-docs-ffaff3)](https://hexdocs.pm/lustre_pipes/)

```sh
gleam add lustre_pipes
```
Lets you write views with pipes. It's definitely less performant but I have
not benchmarked if significant or not.

Example usage:

```gleam
import lustre_pipes/attribute
import lustre_pipes/element
import lustre_pipes/element/html
import lustre_pipes/event

fn view(model: Model) -> element.Element(Msg) {
  let sorted_messages =
    model.omnistate.messages
    |> dict.values
    |> sort_messages
  html.div()
  |> attribute.class("h-full flex flex-col justify-center items-center gap-y-5")
  |> element.children([
    html.div()
      |> element.keyed({
        use message <- list.map(sorted_messages)
        #(message.id, message_element(message))
      }),
    html.form()
      |> event.on_submit(UserSendDraft)
      |> element.children([
        html.input()
          |> event.on_input(UserUpdateDraftMessageContent)
          |> attribute.type_("text")
          |> attribute.value(model.draft_message_content)
          |> attribute.class("border border-black py-1 px-2")
          |> element.empty(),
        html.input()
          |> attribute.type_("submit")
          |> attribute.value("Send")
          |> attribute.class("ml-4 border border-black py-1 px-2")
          |> element.empty(),
      ]),
  ])
}
```

Further documentation can be found at <https://hexdocs.pm/lustre_pipes>.
