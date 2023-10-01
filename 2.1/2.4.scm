#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 2: Building Abstractions with Data                             # |#
#| # Section 2.1: Introduction to Data Abstraction                          # |#
#| # ====================================================================== # |#
#| # Exercise 2.4                                                           # |#
#| ########################################################################## |#

(define (cons x y)
  (lambda (m) (m x y)))

(define (car z)
  (z (lambda (p q) p)))

(define (cdr z)
  (z (lambda (p q) q)))

#|

  (car (cons x y))
  -> (car (lambda (m) (m x y)))
  -> (lambda (m) (m x y)) (lambda (p q) p)
  -> ((lambda (p q) p) x y)
  -> x

|#

(display (car (cons 0 1)))
(newline)
