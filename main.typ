
#import "lib.typ": *

#show: note.with(
  title: [My Research Note],
  authors: (
    ([Alexander Koller], [Saarland University]),
  ),
  version: [0.1]
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

= Another Section

#lorem(50)

#lorem(50)

#lorem(50)

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

= Another Section

#lorem(50)

= Another Section

#lorem(50)


= Another Section

#lorem(50)


= Another Section

#lorem(50)
