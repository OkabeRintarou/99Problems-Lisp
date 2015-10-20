(define (dupli alist)
  (define (dupli-iter alist result)
    (if (null? alist)
        result
        (dupli-iter (cdr alist) (append result (list (car alist) (car alist))))))
  (dupli-iter alist '()))
