#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.3: Formulating Abstractions with Higher-Order Procedures     # |#
#| # ====================================================================== # |#
#| # Exercise 1.42                                                          # |#
#| ########################################################################## |#

(define (compose f g)
  (lambda (x) (f (g x))))

(define (square x) (* x x))

(define (inc x) (+ x 1))

(display ((compose square inc) 6))
(newline)
