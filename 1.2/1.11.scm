#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.2:  Procedures and the Processes They Generate               # |#
#| # ====================================================================== # |#
#| # Exercise 1.11                                                          # |#
#| ########################################################################## |#

; recursive

(define (f-recursive n)
  (if (< n 3)
    n
    (+ (f-recursive (- n 1))
       (* 2 (f-recursive (- n 2)))
       (* 3 (f-recursive (- n 3))))))

(display (f-recursive 10))
(newline)

; iterative

(define (f-iterative n)
  (define (iter i n-1 n-2 n-3)
    (cond ((< n 3) n)
          ((> i n) n-1)
          (else (iter (+ 1 i) (+ n-1 (* 2 n-2) (* 3 n-3)) n-1 n-2))))
  (iter 3 2 1 0))


(display (f-iterative 10))
(newline)
