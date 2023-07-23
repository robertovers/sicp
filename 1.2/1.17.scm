#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.2:  Procedures and the Processes They Generate               # |#
#| # ====================================================================== # |#
#| # Exercise 1.17                                                          # |#
#| ########################################################################## |#

(define (double a)
  (* a 2))

(define (halve a)
  (/ a 2))

(define (multiply a b)
  (cond ((= b 1) a)
        ((even? b) (multiply (double a) (halve b)))
        (else (+ a (multiply a (+ b -1))))))

(display (multiply 7 151))
(newline)
