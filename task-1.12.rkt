(define (pascal-triangle row index)
	(cond
		(((or (= index 1) (= row index))
		1))

		(else
			(+
				(pascal-triangle (- row 1) index)
				(pascal-triangle (- row 1) (- index 1))))))

; (pascal-triangle 5 3)
; (pascal-triangle 4 3)+(pascal-triangle 4 2)
; (pascal-triangle 3 3)+(pascal-triangle 3 2)+(pascal-triangle 3 2)+(pascal-triangle 3 1)
; 1 + (pascal-triangle 2 2) + (pascal-triangle 2 1) + (pascal-triangle 2 2) + (pascal-triangle 2 1) + 1
; 1 + 1 + 1 + 1 + 1 + 1 + 1 = 6