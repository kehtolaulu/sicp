#lang racket


(define (sum-of-squares-of-two-max a b c)
    (cond
        ((> a b) (+ (sqr a) (sqr (max b c))))
        (else (+ (sqr b) (sqr (max a c))))))


(define (sqr a)
    (* a a))


(define (max a b)
    (if (> a b) a b))
