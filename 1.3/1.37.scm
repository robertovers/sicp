#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.3: Formulating Abstractions with Higher-Order Procedures     # |#
#| # ====================================================================== # |#
#| # Exercise 1.37                                                          # |#
#| ########################################################################## |#

; iterative

(define (cont-frac n d k)
  (define (iter i res)
    (if (> 0 i)
      res
      (iter (- i 1) (/ (n i) (+ (d i) res)))))
  (iter k 0))

(display
  (cont-frac (lambda (i) 1.0)
             (lambda (i) 1.0)
             100))
(newline)

; recursive

(define (cont-frac n d k)
  (if (= k 0)
    0
    (/ (n k) (+ (d k) (cont-frac n d (- k 1))))))


(display
  (cont-frac (lambda (i) 1.0)
             (lambda (i) 1.0)
             100))
(newline)
