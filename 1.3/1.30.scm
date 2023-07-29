#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.3: Formulating Abstractions with Higher-Order Procedures     # |#
#| # ====================================================================== # |#
#| # Exercise 1.30                                                          # |#
#| ########################################################################## |#

(define (sum term a next b)
  (define (iter a res)
    (if (> a b)
      res
      (iter (next a) (+ res (term a)))))
  (iter a 0))
