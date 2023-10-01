#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 2: Building Abstractions with Data                             # |#
#| # Section 2.1: Introduction to Data Abstraction                          # |#
#| # ====================================================================== # |#
#| # Exercise 2.2                                                           # |#
#| ########################################################################## |#

; point 

(define (make-point x y) (cons x y))

(define x-point car)

(define y-point cdr)

(define (print-point p)
  (display "(")
  (display (x-point p))
  (display ", ")
  (display (y-point p))
  (display ")")
  (newline))

; segment

(define (make-segment start end) (cons start end))

(define start-point car)

(define end-point cdr)

(define (midpoint-segment s)
  (make-point
    (/ (+ (x-point (start-point s)) (x-point (end-point s))) 2)
    (/ (+ (y-point (start-point s)) (y-point (end-point s))) 2)))


(define p1 (make-point 4 5))
(define p2 (make-point 10 3))
(define s1 (make-segment p1 p2))
(print-point (midpoint-segment s1))
