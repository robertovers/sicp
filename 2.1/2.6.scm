#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 2: Building Abstractions with Data                             # |#
#| # Section 2.1: Introduction to Data Abstraction                          # |#
#| # ====================================================================== # |#
#| # Exercise 2.6                                                           # |#
#| ########################################################################## |#

(define zero
  (lambda (f)
    (lambda (x)
      x)))

(define (add-1 n)
  (lambda (f)
    (lambda (x)
      (f ((n f) x)))))

#|

  (add-1 zero)
  -> (lambda (f) (lambda (x) (f ((zero f) x))))
  -> (lambda (f) (lambda (x) (f ((lambda (x) x) x))))
  -> (lambda (f) (lambda (x) (f x)))
  -> one

|#

(define one
  (lambda (f)
    (lambda (x)
      (f x))))

#|

  (add-1 one)
  -> (lambda (f) (lambda (x) (f ((one f) x))))
  -> (lambda (f) (lambda (x) (f ((lambda (g) (lambda (y) (g y)) f) x))))
  -> (lambda (f) (lambda (x) (f ((lambda (y) (f y)) x))))
  -> (lambda (f) (lambda (x) (f (f x))))
  -> two

|#

(define two
  (lambda (f)
    (lambda (x)
      (f (f x)))))

(define (+ n m)
  (lambda (f)
    (lambda (x)
      ((n f) ((m f) x)))))

(((+ one two) (lambda (x) (display "."))) "")
(newline)
