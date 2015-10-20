(define (my-reverse alist)
  (define (my-reverse-iter alist reversed-list)
    (if (null? alist)
        reversed-list
        (my-reverse-iter (cdr alist) (cons (car alist) reversed-list))))
  (my-reverse-iter alist null))
