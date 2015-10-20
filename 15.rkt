(define (repli alist times)
  (define (times-list elem time result)
    (if (= time 0) 
        result
        (times-list elem (- time 1) (cons elem result))))
  (define (repli-iter alist result)
    (if (null? alist)
        result
        (repli-iter (cdr alist)
                    (append result (times-list (car alist) times null)))))
  (repli-iter alist null))
