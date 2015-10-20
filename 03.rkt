(define (element-at alist K)
  (cond ((or (null? alist) (<= K 0)) (error "K greater than alist's length"))
        ((= K 1) (car alist))
        (else
         (element-at (cdr alist) (- K 1)))))
