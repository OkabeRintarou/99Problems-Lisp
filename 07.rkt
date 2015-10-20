(define (my-flatten alist)
  (define (my-flatten-iter alist flatted-list)
    (cond ((null? alist) flatted-list)
          ((not (list? (car alist)))
           (append flatted-list (list (car alist)) (my-flatten (cdr alist))))
          (else
           (append flatted-list (my-flatten (car alist)) (my-flatten (cdr alist))))))
  (my-flatten-iter alist null))
