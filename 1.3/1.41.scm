#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.3: Formulating Abstractions with Higher-Order Procedures     # |#
#| # ====================================================================== # |#
#| # Exercise 1.41                                                          # |#
#| ########################################################################## |#

(define (double f)
  (lambda (x) (f (f x))))

(define (inc x) (+ x 1))

(display (((double (double double)) inc) 5))
(newline)
