#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.2:  Procedures and the Processes They Generate               # |#
#| # ====================================================================== # |#
#| # Exercise 1.16                                                          # |#
#| ########################################################################## |#

(define (fast-expt-iterative b n)
  (define (fast-expt-iter a b n)
    (cond ((= n 0) a)
          ((even? n) (fast-expt-iter a (* b b) (/ n 2)))
          (else (fast-expt-iter (* a b) b (- n 1)))))
  (fast-expt-iter 1 b n))

(display (fast-expt-iterative 2 34))
(newline)
