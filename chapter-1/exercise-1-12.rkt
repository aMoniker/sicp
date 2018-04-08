#lang racket

#| Exercise 1.12
The following pattern of numbers is called Pascal's triangle:

     1
    1 1
   1 2 1
  1 3 3 1
 1 4 6 4 1

The numbers at the edge of the triangle are all 1, and each number inside the triangle is the sum of the two numbers above it. Write a procedure that computes elements of Pascal's triangle by means of a recursive process.
|#

(define (pascalian-triangle n x)
  (cond ((< n 2) 1)
        ((or (= x 0) (= x n)) 1)
        (else (+ (pascalian-triangle (- n 1) (- x 1))
                 (pascalian-triangle (- n 1) x)
              )
        )
  )
)

(pascalian-triangle 0 0)
(pascalian-triangle 1 0)
(pascalian-triangle 1 1)
(pascalian-triangle 2 0)
(pascalian-triangle 2 1)
(pascalian-triangle 2 2)
(pascalian-triangle 3 0)
(pascalian-triangle 3 1)
(pascalian-triangle 3 2)
(pascalian-triangle 3 3)
(pascalian-triangle 4 0)
(pascalian-triangle 4 1)
(pascalian-triangle 4 2)
(pascalian-triangle 4 3)
(pascalian-triangle 4 4)
