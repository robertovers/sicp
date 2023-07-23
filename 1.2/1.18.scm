#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.2:  Procedures and the Processes They Generate               # |#
#| # ====================================================================== # |#
#| # Exercise 1.18                                                          # |#
#| ########################################################################## |#

(define (double a)
  (* a 2))

(define (halve a)
  (/ a 2))

(define (multiply-iterative a b)
  (define (multiply-iter a b rem)
    (cond ((= b 1) (+ a rem))
          ((even? b) (multiply-iter (double a) (halve b) rem))
          (else (multiply-iter a (+ b -1) (+ a rem)))))
  (multiply-iter a b 0))

(display (multiply-iterative 7 151))
(newline)
