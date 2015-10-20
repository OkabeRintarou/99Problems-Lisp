(define (my-length alist)
  (define (my-length-iter alist cnt)
    (if (null? alist)
        cnt
        (my-length-iter (cdr alist) (+ cnt 1))))
  (my-length-iter alist 0))
