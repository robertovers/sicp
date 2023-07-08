#| SICP - Chapter 1 |#

#| Exercise 1.1 |#

(define (print x)
  (display x)
  (newline))

(print 10) ; -> 10

(print (+ 5 3 4)) ; -> 12

(print (- 9 1)) ; -> 8

(print (/ 6 2)) ; -> 3

(print (+ (* 2 4) (- 4 6))) ; -> 6

(define a 3)
(define b (+ a 1))

(print (= a b)) ; -> #f

(print 
  (if (and 
        (> b a)
        (< b (* a b)))
    b a)) ; -> 4

(print
  (cond ((= a 4) 6)
        ((= b 4) (+ 6 7 a))
        (else 25))) ; -> 16

(print
  (+ 2 (if (> b a) b a))) ; -> 6

(print
  (* (cond ((> a b) a)
           ((< a b) b)
           (else -1))
     (+ a 1))) ; -> 16 


#| Exercise 1.2 |#

(print
  (/ (+ 5
        4
        (- 2
           (- 3
              (+ 6 
                 (/ 4 5)))))
     (* 3
        (* (- 6 2)
           (- 2 7)))))


#| Exercise 1.3 |#

(define (square x)
  (* x x))

(define (sum-squares x y)
  (+ (square x) (square y)))

(define (sum-squares-largest x y z)
  (cond ((and (< x y) (< x z)) (sum-squares y z))
        ((< y z) (sum-squares x z))
        (else (sum-squares x y))))

(print (sum-squares-largest 2 4 3))


#| Exercise 1.4 |#

(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

#|
  The if-condition in the above expression returns an operator, which is
  then applied to a & b in order to compute either (a + b) or (a - b).
|#


#| Exercise 1.5 |#

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

