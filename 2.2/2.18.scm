#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 2: Building Abstractions with Data                             # |#
#| # Section 2.2: Heirarchical Data and the Closure Property                # |#
#| # ====================================================================== # |#
#| # Exercise 2.18                                                          # |#
#| ########################################################################## |#

(define (reverse items)
  (if (null? items)
    items
    (append (reverse (cdr items)) (list (car items)))))

(display (reverse (list 1 4 9 16 25)))
(newline)
