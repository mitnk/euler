#lang racket

(define (sum-of-divisors n)
  (define (sod-iter i s)
    (cond ((> i (/ n 2)) s)
          ((= (remainder n i) 0) (sod-iter (+ i 1) (+ s i)))
          (else (sod-iter (+ i 1) s))))
  (sod-iter 1 0))


(define (check-ami limit)
  (define (check-ami-iter i s)
    (define sods (sum-of-divisors i))
    (cond ((= i limit) s)
          ((and (not (= sods i)) (= (sum-of-divisors sods) i)) 
              (check-ami-iter (+ i 1) (+ s i)))
          (else (check-ami-iter (+ i 1) s))))
  (check-ami-iter 1 0))

(check-ami 10000)
