#lang racket

#| Exercise 1.7
Design a square root procedure that watches how the guess changes
from one iteration to the next, and stops guessing when the change
between guesses is a very small fraction of the guess.
|#

(define (sqrt x)
  (sqrt-iter 1.0 0.0 x))

(define (sqrt-iter guess last-guess x)
    (if (good-enough? guess last-guess)
        guess
        (sqrt-iter (improve guess x) guess x)))

(define (good-enough? guess last-guess)
  (< (abs (- guess last-guess)) 0.000001))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

; tests
9
(sqrt 9)

64
(sqrt 64)

0.002
(sqrt 0.002)

1234567890
(sqrt 1234567890)
