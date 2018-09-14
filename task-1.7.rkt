#lang racket


(define (good-enough? previous-guess current-guess) 
    (< (abs (- previous-guess current-guess)) 0.001))


(define (sqrt-iter guess x)
    (if (good-enough? guess (improve guess x))
        (improve guess x)
        (sqrt-iter (improve guess x) x)))


(define (improve guess x)
    (average guess (/ x guess)))


(define (average a b)
    (/ (+ a b) 2))


(define (sqrt x)
    (sqrt-iter 1.0 x))
