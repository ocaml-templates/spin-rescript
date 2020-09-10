{% if css_framework == 'None' -%}
module Styles = {
  open Css

  let container = style(list{textAlign(center), marginTop(rem(3.))})

  let text = style(list{fontSize(rem(1.875)), color(hex("1a202c")), marginBottom(rem(1.))})

  let link = style(list{fontSize(rem(1.875)), textDecoration(#none), color(hex("4299e1"))})
}

@react.component
let make = (~name) =>
  <div className=Styles.container>
    <p className=Styles.text>
      {React.string(j`👋 Welcome $name! You can edit me in `)}
      <code> {React.string("src/components/Greet.re")} </code>
    </p>
    <a className=Styles.link href="https://reasonml.github.io/reason-react/">
      {React.string("Learn Reason React")}
    </a>
  </div>
{%- else %}
@react.component
let make = (~name) =>
  <div className="text-center mt-12">
    <p className="text-3xl text-gray-900 mb-4">
      {React.string(j`👋 Welcome $name! You can edit me in `)}
      <code> {React.string("src/components/Greet.re")} </code>
    </p>
    <a
      className="text-3xl no-underline text-blue-500"
      href="https://reasonml.github.io/reason-react/">
      {React.string("Learn Reason React")}
    </a>
  </div>
{%- endif %}
