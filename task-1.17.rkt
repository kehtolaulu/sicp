(define (fast-mult a b)
  (cond ((= a 0) 0)
  		((= a 1) b)
        ((even? a) (double (fast-mult b (halve a))))
        (else (+ b (fast-mult b (- a 1))))))

 (define (double x)
    (+ x x))


(define (halve x)
    (/ x 2))