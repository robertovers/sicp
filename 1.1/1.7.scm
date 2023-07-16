#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.1: The Elements of Programming                               # |#
#| # ====================================================================== # |#
#| # Exercise 1.7                                                           # |#
#| ########################################################################## |#

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough guess last_guess)
  (< (abs (/ (- guess last_guess) guess)) 0.0000001))

(define (sqrt-iter guess x)
  (if (good-enough (improve guess x) guess)
    (improve guess x) 
    (sqrt-iter (improve guess x) x)))

(define (new-sqrt x)
  (sqrt-iter 1.0 x))
