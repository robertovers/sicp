#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.1: The Elements of Programming                               # |#
#| # ====================================================================== # |#
#| # Exercise 1.8                                                           # |#
#| ########################################################################## |#

(define (square x)
  (* x x))

(define (improve y x)
  (/ (+ (/ x (square y)) (* 2 y)) 3))

(define (good-enough guess last_guess)
  (< (abs (/ (- guess last_guess) guess)) 0.0000001))

(define (cube-root-iter guess x)
  (if (good-enough (improve guess x) guess)
    (improve guess x)
    (cube-root-iter (improve guess x) x)))

(define (cube-root x)
  (cube-root-iter 1.0 x))

; refactored using Block Structure and Lexical Scoping from 1.1.8

(define (neat-cube-root x)
  (define (improve y)
    (/ (+ (/ x (square y)) (* 2 y)) 3))
  (define (good-enough guess last_guess)
    (< (abs (/ (- guess last_guess) guess)) 0.0000001))
  (define (cube-root-iter guess)
    (if (good-enough (improve guess) guess)
      (improve guess)
      (cube-root-iter (improve guess))))
  (cube-root-iter 1.0))
