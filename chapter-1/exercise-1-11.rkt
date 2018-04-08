#lang racket

#| Exercise 1.11
A function f is defined by the rule that f(n) = n if n < 3
and f(n) = f(n - 1) + 2f(n - 2) + 3f(n - 3) if n >= 3.
Write a procedure that computes f by means of a recursive process.
Write a procedure that computes f by means of an iterative process.
|#

(define (f-recursive n)
  (cond ((< n 3) n)
        (else (+      (f-recursive (- n 1))
                 (* 2 (f-recursive (- n 2)))
                 (* 3 (f-recursive (- n 3)))
              )
        )
  )
)

(define (f-iterative n)
  (f-iter n 0 0 0 0)
)

(define (f-iter n n-one n-two n-three count)
  (cond ((= n count) (get-n n-one n-two n-three count))
        (else
          (f-iter n (get-n n-one n-two n-three count) n-one n-two (+ 1 count))
        )
  )
)

(define (get-n n-one n-two n-three count)
  (cond ((< count 3) count)
        (else (+ n-one (* 2 n-two) (* 3 n-three)))
  )
)

(f-recursive 10)
(f-iterative 10)
