(define (lengthl lst n)
  (cond ((null? lst)  0)
        (else         (+ 1 (lengthl (cdr lst) n)))
  )
)
; (display(lengthl '(1,2,3,4) 2))


; (define (tailn lst n)
;     (cond ((equal? n 0)  lst)
;           (else         (tailn (cdr lst) (- n 1)))
;   )
; )


(define (tailn lst n)
    (cond ((equal? n 0) lst)
        (else (tailn (cdr lst) (- n 1)))
    )
)



(display(tailn '(1,2,3,4) 2))
