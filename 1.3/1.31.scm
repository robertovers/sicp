#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.3: Formulating Abstractions with Higher-Order Procedures     # |#
#| # ====================================================================== # |#
#| # Exercise 1.31                                                          # |#
#| ########################################################################## |#

; recursive

(define (product-recursive term a next b)
  (if (> a b)
    1
    (* (term a)
       (product-recursive term (next a) next b))))

; iterative

(define (product-iterative term a next b)
  (define (iter a res)
    (if (> a b)
      res
      (iter (next a) (* res (term a)))))
  (iter a 1))

; computing factorial

(define product product-iterative)

(define (inc x) (+ x 1))

(define (factorial n)
  (define (i x) x)
  (product i 1 inc n))

(display (factorial 5))
(newline)

; computing pi using Wallis' method

(define (wallis-pi n)
  (define (wallis-term n)
    (if (even? n)
      (/ (+ n 2) (+ n 1))
      (/ (+ n 1) (+ n 2))))
  (* 4 (product wallis-term 1 inc n)))

(display (exact->inexact (wallis-pi 1000)))
(newline)


