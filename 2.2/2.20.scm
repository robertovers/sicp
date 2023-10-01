#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 2: Building Abstractions with Data                             # |#
#| # Section 2.2: Heirarchical Data and the Closure Property                # |#
#| # ====================================================================== # |#
#| # Exercise 2.20                                                          # |#
#| ########################################################################## |#

(define (filter predicate items)
  (cond ((null? items) items)
        ((predicate (car items)) (cons (car items) (filter predicate (cdr items))))
        (else (filter predicate (cdr items)))))

(define (same-parity x . z)
  (let ((parity? (if (even? x) even? odd?)))
    (cons x (filter parity? z))))


(display (same-parity 1 3 4 5 6))
(newline)

(display (same-parity 2 3 4 5 6))
(newline)
