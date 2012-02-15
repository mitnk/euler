#lang racket

(define (fib n)
  (if (< n 3)
      n
      (fib-iter 1 2 (- n 2))))

(define (fib-iter a b count)
  (if (= count 0)
      b 
      (fib-iter b (+ a b) (- count 1))))

(define (sum s n)
  (cond ((> (fib n) 4000000) s)
      ((= (remainder (fib n) 2) 1) (sum s (+ n 1)))
      (else (sum (+ s (fib n)) (+ n 1)))))

(sum 0 1)
