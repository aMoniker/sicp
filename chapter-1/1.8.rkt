#lang racket

#| Exercise 1.8
Newton's method for cube roots is based on the fact that if y is an
approximation to the cube root of x, then a better approximation is given by:

((x / y^2) + 2y) / 3

Use this formula to implement a cube-root procedure analogous
to the square-root procedure.
|#

(define (cbrt x)
  (cbrt-iter 1.0 0.0 x))

(define (cbrt-iter guess last-guess x)
    (if (good-enough? guess last-guess)
        guess
        (cbrt-iter (improve guess x) guess x)))

(define (good-enough? guess last-guess)
  (< (abs (- guess last-guess)) 0.000001))

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

; tests
27
(cbrt 27)

64
(cbrt 64)

0.002
(cbrt 0.002)

1234567890
(cbrt 1234567890)
