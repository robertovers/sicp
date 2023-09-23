#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 2: Building Abstractions with Data                             # |#
#| # Section 2.1: Introduction to Data Abstraction                          # |#
#| # ====================================================================== # |#
#| # Exercise 2.1                                                           # |#
#| ########################################################################## |#

(define (make-rat n d)
  (let ((g ((if (< d 0) - +) (gcd n d))))
    (cons (/ n g) (/ d g))))

(define numer car)

(define denom cdr)

(define (print-rat x)
  (display (numer x))
  (display "/")
  (display (denom x))
  (newline))

(print-rat (make-rat 8 -12))
