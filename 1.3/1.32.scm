#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.3: Formulating Abstractions with Higher-Order Procedures     # |#
#| # ====================================================================== # |#
#| # Exercise 1.32                                                          # |#
#| ########################################################################## |#

(define (i x) x)

(define (inc x) (+ x 1))

; recursive

(define (accumulate-recursive combiner null-value term a next b)
  (if (> a b)
    1
    (* (term a)
       (accumulate-recursive combiner null-value term (next a) next b))))

(define (product term a next b)
  (accumulate-recursive * 1 term a next b))

(display (product i 1 inc 5))
(newline)

; iterative

(define (accumulate combiner null-value term a next b)
  (define (iter a res)
    (if (> a b)
      res
      (iter (next a) (combiner res (term a)))))
  (iter a null-value))

(define (sum term a next b)
  (accumulate + 0 term a next b))

(display (sum i 1 inc 5))
(newline)
