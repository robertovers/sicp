#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.1: The Elements of Programming                               # |#
#| # ====================================================================== # |#
#| # Exercise 1.4                                                           # |#
#| ########################################################################## |#

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

#|
  The if-condition in the above expression returns an operator, which is
  then applied to a & b in order to compute either (a + b) or (a - b).
|#
