#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.3: Formulating Abstractions with Higher-Order Procedures     # |#
#| # ====================================================================== # |#
#| # Exercise 1.34                                                          # |#
#| ########################################################################## |#

(define (f g)
  (g 2))

#|
  (f f)
  -> (f 2)
  -> (2 2)
  -> error!
|#
