

// This style is for internal research notes.
// It is modeled roughly after the Dagstuhl LIPIcs style, https://submission.dagstuhl.de/documentation/authors

#let sans = "New Computer Modern Sans"
// "Montserrat"
#let sans-weight = 700
#let serif = "Libertinus Serif"
// "Charis SIL"
#let note(
  title: none,
  authors: (),
  date: datetime.today(),
  version: none,
  doc
) = {
  set text(font: serif, size: 11pt)
  set page(margin: (x: 2.5cm, y: 3cm), numbering: "1")
  set par(first-line-indent: 0em, spacing: 1.4em, justify: true, leading: 0.7em)

  if title != none {
    text(font: sans, size: 17pt, weight: sans-weight, title)
    parbreak()
  }

  for (i, author) in authors.enumerate() {
    text(size: 11pt, weight: "bold", author.at(0))
    if i == 0 {
      h(1fr) 
      date.display("[day] [month repr:long] [year]")
    }
    linebreak()

    author.at(1, default: "")
    if i == 0 and version != none {
      h(1fr) 
      [Version #version]
    }
    linebreak()
  }
  parbreak()
  
  set heading(numbering: "1.1 ")
  let heading-size = 12pt
  show heading.where(level: 1): it => {
    v(2em, weak: true)

    // #box(
    
    place(dx:-3mm-2em, dy:-3.5pt)[
      #box(width: 2em)[
          #context {
            align(right)[
              // TODO fix box size
                #box(fill: yellow, width: 1em, height: 1em)[
                  #if it.numbering != none {
                    align(center+horizon,            
                      text(font: sans, weight: sans-weight, size: heading-size, [#counter(heading).get().first()])
                    )
                  } 
                ]
            ]
          }
      ]
    ]

    // h(0pt)
    text(font: sans, weight: sans-weight, size: heading-size, it.body)
    // v(-0.5em)
  }

  // show heading.where(level: 1): it => [
  //   #v(2em, weak: true)
    
  //   #place(dx:-3mm-2em, dy:-3.3pt)[
  //     #box(width: 2em)[
  //         #context {
  //           align(right)[
  //             // TODO fix box size
  //               #box(fill: yellow, width: 1em, height: 1em, inset: 4pt)[
  //                 #if it.numbering != none {
  //                   align(center+horizon,            
  //                     text(font: sans, weight: sans-weight, size: heading-size, [#counter(heading).get().first()])
  //                   )
  //                 } else {
  //                   hide[1]
  //                 }
  //               ]
  //           ]
  //         }
  //     ]
  //   ]

  //   #h(0pt)
  //   #text(font: sans, weight: sans-weight, size: heading-size, it.body)
  //   #v(-0.5em)
  // ]

  show heading.where(level: 2): set text(font: sans, weight: sans-weight, size: heading-size)
  show heading.where(level: 2): set block(below: 1em, above: 2em)

  doc
}

#let abstract(abstr) = {
  v(2em)
  block[
    #line(length: 100%)
    #place(dx: 2em, dy: -1em, box(
      fill: white,
      inset: 6pt,
      text(font: sans, weight: sans-weight)[Abstract]
    ))
  ]
  v(-0.2em)

  abstr

  v(-0.1em)
  line(length: 100%)
}
