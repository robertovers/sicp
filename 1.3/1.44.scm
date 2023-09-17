#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.3: Formulating Abstractions with Higher-Order Procedures     # |#
#| # ====================================================================== # |#
#| # Exercise 1.44                                                          # |#
#| ########################################################################## |#

(define (compose f g)
  (lambda (x) (f (g x))))

(define (repeated f n)
  (if (= n 1) f
    (compose f (repeated f (- n 1)))))

(define (smooth f)
  (define dx 0.00001)
  (lambda (x) (/ (f x) (f (- x dx)) (f (+ x dx)))))

(define (n-smooth f n)
  (repeated (smooth f) n))

(define (cube x) (* x x x))

(display ((n-smooth cube 10) 1.0))
(newline)
