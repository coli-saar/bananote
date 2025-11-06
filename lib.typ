

// This style is for internal research notes.
// It is modeled roughly after the Dagstuhl LIPIcs style, https://submission.dagstuhl.de/documentation/authors

#let serif = "New Computer Modern Sans"

#let note(
  title: none,
  authors: (),
  date: datetime.today(),
  doc
) = {
  set text(font: "Libertinus Serif", size: 11pt)
  set par(justify: true)

  if title != none {
    text(font: serif, size: 17pt, weight: "bold", title)
    parbreak()
  }

  for (i, author) in authors.enumerate() {
    text(size: 11pt, weight: "bold", author.at(0))
    if i == 0 {
      h(1fr) 
      date.display("[day] [month repr:long] [year]")
    }
    linebreak()
    author.at(1)
    linebreak()
  }
  parbreak()
  
  set heading(numbering: "1.1 ")
  let heading-size = 12pt
  show heading.where(level: 1): it => [
    #v(2em, weak: true)
    #place(dx:-3mm-2em, dy:-0.25em)[
      #box(width: 2em)[
        #context {
          align(right)[
              #box(fill: yellow, inset: 4pt, 
                align(center,            
                  text(font: serif, size: heading-size, [#counter(heading).get().first()])
                )
              )            
          ]
        }
      ]
    ]
    #h(0pt)
    #text(font: serif, size: heading-size, it.body)
    #v(-0.5em)
  ]

  show heading.where(level: 2): set text(font: serif, size: heading-size)
  show heading.where(level: 2): set block(below: 1em, above: 2em)

  doc
}

#let abstract(abstr) = {
  v(1em)
  block[
    #line(length: 100%)
    #place(dx: 2em, dy: -1em, box(
      fill: white,
      inset: 6pt,
      text(font: serif)[*Abstract*]
    ))
  ]
  v(-0.2em)

  abstr

  line(length: 100%)
  v(-1em)
}


// #text(size: 12pt, weight: "bold")[Ivo Melse]\
// Radboud University, Nijmegen, The Netherlands\

// #v(1em)
// #block[
//   #line(length: 100%)
//   #place(dx: 2em, dy: -1em, box(
//     fill: white,
//     inset: 6pt,
//     text(font: serif)[*Abstract*]
//   ))
//   #v(-0.2em)
// ]

// #lorem(100)

// #line(length: 100%)
// #v(-1em)


// #set heading(numbering: "1.1 ")
// #let heading-size = 12pt
// #show heading.where(level: 1): it => [
//   #v(2em, weak: true)
//   #place(dx:-3mm-2em, dy:-0.25em)[
//     #box(width: 2em)[
//       #context {
//         align(right)[
//             #box(fill: yellow, inset: 4pt, 
//               align(center,            
//                 text(font: serif, size: heading-size, [#counter(heading).get().first()])
//               )
//             )            
//         ]
//       }
//     ]
//   ]
//   #h(0pt)
//   #text(font: serif, size: heading-size, it.body)
//   #v(-0.5em)
// ]

// #show heading.where(level: 2): set text(font: serif, size: heading-size)
// #show heading.where(level: 2): set block(below: 1em, above: 2em)


// = Introduction

// #lorem(50)

// == Subsection

// #lorem(50)


// = Another Section

// #lorem(50)