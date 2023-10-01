#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 2: Building Abstractions with Data                             # |#
#| # Section 2.2: Heirarchical Data and the Closure Property                # |#
#| # ====================================================================== # |#
#| # Exercise 2.21                                                          # |#
#| ########################################################################## |#

(define (square-list items)
  (if (null? items)
    items
    (cons (* (car items) (car items))
          (square-list (cdr items)))))

(display (square-list (list 1 2 3 4)))
(newline)

(define (map proc items)
  (if (null? items)
    items
    (cons (proc (car items))
          (map proc (cdr items)))))

(define (square-list items)
  (map (lambda (x) (* x x)) items))

(display (square-list (list 1 2 3 4)))
(newline)
