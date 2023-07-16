#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.1: The Elements of Programming                               # |#
#| # ====================================================================== # |#
#| # Exercise 1.6                                                           # |#
#| ########################################################################## |#

(define (average x y)
  (/ (+ x y) 2))

(define (square x)
  (* x x))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (new-sqrt-iter guess x)
  (new-if (good-enough guess x)
          guess
          (new-sqrt-iter (improve guess x) x)))

(define (new-sqrt x)
  (new-sqrt-iter 1.0 x))

#|

  When we attempt to call new-sqrt, we see that our program doesn't exit. This
  is because, recalling from earlier, scheme uses applicative-order evaluation
  for procedures. This means that when new-if inside new-sqrt-iter is evaluated,
  it will always evaluate new-sqrt-iter before reaching the cond, resulting in 
  an infinitely-recursive loop. The standard if-condition, on the other hand,
  evaluates the predicates sequentially, meaning that when good-enough returns
  true, it will return before evaluating sqrt-iter.

|#
