#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.3: Formulating Abstractions with Higher-Order Procedures     # |#
#| # ====================================================================== # |#
#| # Exercise 1.39                                                          # |#
#| ########################################################################## |#

(define (cont-frac n d k)
  (define (iter i res)
    (if (= i 0)
      res
      (iter (- i 1) (/ (n i) (+ (d i) res)))))
  (iter k 0))

(define (tan-cf x k)
  (let ((a (- (* x x))))
    (cont-frac (lambda (i) (if (= i 1) x a))
               (lambda (i) (- (* 2.0 i) 1))
               k)))

(display (tan-cf 1.0 100))
(newline)
