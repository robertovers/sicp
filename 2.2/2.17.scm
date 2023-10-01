#| ########################################################################## |#
#| # The Structure and Interpretation of Computer Programs                  # |#
#| # ====================================================================== # |#
#| # Chapter 2: Building Abstractions with Data                             # |#
#| # Section 2.2: Heirarchical Data and the Closure Property                # |#
#| # ====================================================================== # |#
#| # Exercise 2.17                                                          # |#
#| ########################################################################## |#

(define (last-pair items)
  (if (null? (cdr items))
    items
    (last-pair (cdr items))))

(display (last-pair (list 23 72 149 34)))
(newline)
