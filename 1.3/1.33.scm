#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.3: Formulating Abstractions with Higher-Order Procedures     # |#
#| # ====================================================================== # |#
#| # Exercise 1.33                                                          # |#
#| ########################################################################## |#

(define (filtered-accumulate filter combiner null-value term a next b)
  (define (iter a res)
    (cond ((> a b) res)
          ((filter a) (iter (next a) (combiner res (term a))))
          (else (iter (next a) res))))
  (iter a null-value))
