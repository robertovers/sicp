#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.1: The Elements of Programming                               # |#
#| # ====================================================================== # |#
#| # Exercise 1.3                                                           # |#
#| ########################################################################## |#

(define (square x)
  (* x x))

(define (sum-squares x y)
  (+ (square x) (square y)))

(define (sum-squares-largest x y z)
  (cond ((and (< x y) (< x z)) (sum-squares y z))
        ((< y z) (sum-squares x z))
        (else (sum-squares x y))))
