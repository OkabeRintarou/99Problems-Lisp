(define (drop alist number)
  (define (drop-iter alist num result)
    (if (null? alist)
        result
        (if (not (= num 1))
            (drop-iter (cdr alist) (- num 1) (append result (list (car alist))))
            (drop-iter (cdr alist) number result))))
  (drop-iter alist number null))
