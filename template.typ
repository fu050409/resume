/// Fonts
#let fonts = (
  main: "Microsoft Yahei",
  mono: "Cascadia Mono"
)

/// Colors
#let colors = (
  main: rgb("#343434"),
  secondary: rgb("#808080"),
  theme: rgb(11, 98, 139),
  link: rgb("#1e6485"),
  icon: rgb(11, 98, 139),
)

/// Icons Helper
#let icon(path, width: 0.9em, height: 0.8em) = box(
  text(fill: colors.icon, image(path, alt: path)),
  width: width,
  height: height,
)
/// Icons
#let icons = (
  fa-angle-right: icon("icons/fa-angle-right.svg"),
  fa-award: icon("icons/fa-award.svg"),
  fa-building-columns: icon("icons/fa-building-columns.svg"),
  fa-code: icon("icons/fa-code.svg"),
  fa-envelope: icon("icons/fa-envelope.svg"),
  fa-github: icon("icons/fa-github.svg"),
  fa-graduation-cap: icon("icons/fa-graduation-cap.svg"),
  fa-linux: icon("icons/fa-linux.svg"),
  fa-phone: icon("icons/fa-phone.svg"),
  fa-windows: icon("icons/fa-windows.svg"),
  fa-wrench: icon("icons/fa-wrench.svg"),
  fa-work: icon("icons/fa-work.svg"),
)

#let resume(
  font-size: 10pt,
  margin: (
    top: 1.5cm,
    bottom: 1.5cm,
    left: 1.5cm,
    right: 1.5cm,
  ),
  gutter-width: 2em,
  photo: none,
  header,
  body,
) = {
  set page(paper: "a4", numbering: none, margin: margin)
  set text(font: (fonts.main, fonts.mono), fill: colors.main, size: font-size, lang: "zh")

  show heading: set text(size: 13pt, fill: colors.theme)
  show heading.where(level: 2): it => stack(
    v(0.1em),
    it,
    v(0.4em),
    line(length: 100%, stroke: 0.05em + colors.theme),
  )

  show list: set text(fill: colors.main, size: 8.5pt)
  set list(indent: 0.8em, body-indent: 0.3em, marker: icons.fa-angle-right)

  show link: underline
  show link: set text(fill: colors.link)

  set par(first-line-indent: 0em, spacing: 0.6em, justify: true)

  grid(
    columns: (auto, 12em),
    gutter: (gutter-width, auto),
    [#body],
    {
      if (photo != none) {
        set align(center)
        image(photo, alt: "Profile Image", width: 12em)
      }
      header
    },
  )
}

#let sidebar(side, content, with-line: true, side-width: 13%) = layout(size => {
  let side-size = measure(side, height: size.height, width: size.width)
  let content-size = measure(content, width: size.width * (100% - side-width), height: size.height)
  let height = calc.max(side-size.height, content-size.height) + 0.5em
  grid(
    columns: (side-width, 0%, auto),
    gutter: 0.6em,
    {
      v(0.25em)
      side
      v(0.25em)
    },
    if with-line { line(end: (0em, height), stroke: 0.05em) },
    {
      v(0.25em)
      content
      v(0.25em)
    },
  )
})

#let info(
  color: black,
  ..infos,
) = {
  set text(font: (fonts.mono, fonts.main), fill: color)
  set par(justify: false)

  infos
    .pos()
    .map(item => {
      box({
        item.icon
        h(0.5em)
        if "link" in item {
          link(item.link, item.content)
        } else {
          item.content
        }
        v(0.5em)
      })
    })
    .join()

  v(0.5em)
}

#let date(body) = text(
  fill: colors.secondary,
  size: 0.8em,
  body,
)

#let tech(body) = block({
  set text(size: 8.5pt, weight: "extralight")
  body
  v(0.2em)
})

#let item(
  title,
  desc,
  endnote,
) = {
  v(0.7em)
  grid(
    columns: (39%, 1fr, auto),
    gutter: 0em,
    text(title, size: 11pt), text(desc, fill: colors.secondary), endnote,
  )
}

#let space-between(..items) = {
  let items_arr = items.pos()
  let len = items_arr.len()
  let columns = items_arr.map(item => 100% / len)

  set text(size: 8.5pt)

  v(0.2em)
  grid(
    columns: columns,
    align: items_arr.map(item => {
      if item == items_arr.first() {
        return left
      } else if item == items_arr.last() {
        return right
      } else {
        return center
      }
    }),
    gutter: 0em,
    ..items,
  )
  v(0.3em)
}

#let proficiency(level) = {
  set text(size: 8.5pt)
  sub(text(level, fill: colors.secondary))
}

#let tech-stack(level: "精通", ..techs) = {
  techs
    .pos()
    .map(item => {
      text(item, size: 7.5pt, weight: "bold")
    })
   .join(" / ")

  proficiency(level)
}
