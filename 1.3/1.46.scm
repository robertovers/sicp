#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.3: Formulating Abstractions with Higher-Order Procedures     # |#
#| # ====================================================================== # |#
#| # Exercise 1.46                                                          # |#
#| ########################################################################## |#

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (iterative-improve good-enough? improve)
  (lambda (guess)
    (if (good-enough? guess) guess
      ((iterative-improve good-enough? improve) (improve guess)))))

(define (new-sqrt x)
  (define (sqrt-improve guess)
    (average guess (/ x guess)))
  (define (sqrt-good-enough? guess)
    (< (abs (- (square guess) x)) 0.001))
  ((iterative-improve sqrt-good-enough?
                      sqrt-improve) 1))

(display (new-sqrt 2.0))
(newline)
