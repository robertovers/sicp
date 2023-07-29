#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.3: Formulating Abstractions with Higher-Order Procedures     # |#
#| # ====================================================================== # |#
#| # Exercise 1.29                                                          # |#
#| ########################################################################## |#

(define (inc x) (+ x 1))

(define (sum term a next b)
  (if (> a b)
    0
    (+ (term a)
       (sum term (next a) next b))))

(define (simpson-integral f a b n)
  (define h (/ (- b a) n))
  (define (yk k) (f (+ a (* k h))))
  (define (simpson-term k)
    (* (cond ((or (= k 0) (= k n)) 1)
             ((odd? k) 2)
             (else 4))
       (yk k)))
  (* (/ h 3) (sum simpson-term 0 inc n)))

(define (cube x) (* x x x))

(display (exact->inexact (simpson-integral cube 0 1 100)))
(newline)
(display (exact->inexact (simpson-integral cube 0 1 1000)))
(newline)
