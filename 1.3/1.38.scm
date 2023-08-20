#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.3: Formulating Abstractions with Higher-Order Procedures     # |#
#| # ====================================================================== # |#
#| # Exercise 1.38                                                          # |#
#| ########################################################################## |#

(define (cont-frac n d k)
  (define (iter i res)
    (if (= i 0)
      res
      (iter (- i 1) (/ (n i) (+ (d i) res)))))
  (iter k 0))

(define (euler-term i)
  (if (= (remainder (+ i 1) 3) 0)
    (* 2 (quotient (+ i 1) 3))
    1))

(define e
  (+ 2 (cont-frac (lambda (i) 1.0)
                  euler-term
                  100)))

(display e)
(newline)
