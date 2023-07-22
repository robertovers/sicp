#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.2:  Procedures and the Processes They Generate               # |#
#| # ====================================================================== # |#
#| # Exercise 1.12                                                          # |#
#| ########################################################################## |#

; Pascal's Triangle

(define (pascal n)
  (define (coef y x)
    (cond ((or (= y 1) (= x 1) (= y x)) 1)
          (else (+ (coef (- y 1) (- x 1))
                   (coef (- y 1) x)))))
  (define (pascal-row-iter i row)
    (display (coef row i)) (display " ")
    (if (< i row) (pascal-row-iter (+ i 1) row)))
  (define (pascal-iter i)
    (pascal-row-iter 1 i) (newline)
    (if (< i n) (pascal-iter (+ i 1))))
  (pascal-iter 1))

(pascal 5)
