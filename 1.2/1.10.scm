#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 1: Building Abstractions with Procedures                       # |#
#| # Section 1.2:  Procedures and the Processes They Generate               # |#
#| # ====================================================================== # |#
#| # Exercise 1.10                                                          # |#
#| ########################################################################## |#

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

#|

  (define (f n) (A 0 n))
  
    (A 0 n)

    (* 2 y)

    -> 2n

    f(n) = 2n


  (define (g n) (A 1 n))

    (A 1 n)

    (A (- 1 1)
       (A 1 (- n 1)))

    (A 0
       (A 1 (- n 1)))

    -> f(g(n-1))
    -> 2*g(n-1)
    -> 2*2*g(n-2)
    -> 2*2*2*g(n-3)

    First, notice g(1) = 2.
    If n = 2, then g(n) = 2*g(2-1) = 2*2.
    If n = 3, then g(n) = 2*2*g(3-2) = 2*2*2.

    And so on. Therefore we have

    g(n) = 2^(n-1)


  (define (h n) (A 2 n))

    (A 2 n)

    (A (- 2 1)
       (A 2 (- n 1)))

    (A 1
       (A 2 (n - 1)))

    -> g(h(n-1))
    -> 2^(h(n-1)) using g(n) above

    But what does this look like?

    First, we have that h(1) = 2.
    If n = 2, then h(n) = 2^(h(2-1)) = 2^2.
    If n = 3, then h(n) = 2^2^(h(2-1)) = 2^2^2.
  
|#
