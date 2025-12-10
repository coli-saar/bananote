#import "@preview/pergamon:0.6.0": *
#import "lib.typ": *

#show: note.with(
  title: [My Research Note],
  authors: (
    ([Alexander Koller], [Saarland University]),
  ),
  highlight-by: "Koller",
  version: [1],
)

#abstract[
  #lorem(50)
]



= Introduction

#lorem(50)

== Subsection

#lorem(50)

Here is some math:

$
cal(L)(theta) = sum_(u in cal(U)) sum_(g=1)^K (
  P(g|D^((u)); theta_((i-1))) dot.c (
    log P(g|pi) + sum_(d in D_u) log P(b_d|s_d; rho^((g)))
  )
) 
$ <eq:5>

#lorem(20)

Here's an example citation: #citet("ehop-2025").

Here's a reference to another section: @sec:2.


=== A subsubsection

#lorem(50)

==== A paragraph
#lorem(50)



= Another Section
<sec:2>

#lorem(50)

#lorem(50)

#lorem(50)

#lorem(50)


= Another Section

#lorem(50)

= Another Section

#lorem(50) #cite("knuth1990")

= Another Section

#lorem(50)

= Another Section

#lorem(50)

= Another Section

#lorem(50)

= Another Section

#lorem(50)


= Another Section

#lorem(50)


= Another Section

#lorem(50)



#add-bib-resource(read("bibliography.bib"))
#print-bananote-bibliography()