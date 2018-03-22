#lang racket

#| Exercise 1.3
Define a procedure that takes three numbers as arguments
and returns the sum of the squares of the two larger numbers.
|#

(define (square x) (* x x))
(define (larger-of x y) (if (> x y) x y))
(define (smaller-of x y) (if (< x y) x y))
(define (square-largest-two a b c)
    (define x (larger-of a b))
    (define y (larger-of (smaller-of a b) c))
    (+ (square x) (square y))
)

; tests
(writeln (= 13 (square-largest-two 1 2 3)))
(writeln (= 8 (square-largest-two 2 2 2)))
(writeln (= 500 (square-largest-two 10 9 20)))
