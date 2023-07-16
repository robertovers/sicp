#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.2:  Procedures and the Processes They Generate               # |#
#| # ====================================================================== # |#
#| # Exercise 1.9                                                           # |#
#| ########################################################################## |#


(define (+ a b)
  (if (= a 0)
    b
    (inc (+ (dec a) b))))

#|

  (+ 4 5)
  (inc (+ 3 5))
  (inc (inc (+ 2 5)))
  (inc (inc (inc (+ 1 5))))
  (inc (inc (inc (inc (+ 0 5)))))
  (inc (inc (inc (inc 5))))
  (inc (inc (inc 6)))
  (inc (inc 7))
  (inc 8)
  9

  This is a recursive process, as shown by the chain of deferred operations.

|#

(define (+ a b)
  (if (= a 0)
    b
    (+ (dec a) (inc b))))

#|

  (+ 4 5)
  (+ 3 6)
  (+ 2 7)
  (+ 1 8)
  (+ 0 9)
  9

  This is an iterative process, as each step involves the same number of
  state variables and a fixed rule - in this case, a, b and the + operation.

|#
