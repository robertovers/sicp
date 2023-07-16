#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.1: The Elements of Programming                               # |#
#| # ====================================================================== # |#
#| # Exercise 1.5                                                           # |#
#| ########################################################################## |#

(define (test x y)
  (if (= x 0)
    0
    y))

#|

  Applicative-order:

    We first substitute 0 for x and (p) for y.

      (test 0 (p))

    Using applicative-order evaluation, we first evaluate
    the arguments. Since (p) evaluates to (p), we get

      (test 0 (p))

    This will recurse infinitely.
 

  Normal-order:

    We again substitute 0 for x and (p) for y.

      (test 0 (p))

    Now we expand test, which gives

      (if (= 0 0)
          0
          (p))

    Then we evalute (= 0 0) and (p), which gives

      (if (#t)
          0
          (p))

    Finally, we now evaluate the if-condition, which
    returns 0, avoiding the infinitely-recursive loop.
 
|#
