(define (my-but-last alist)
  (if (null? alist)
      null
      (if (null? (cdr alist))
          null
          (if (null? (cddr alist))
              alist
              (my-but-last (cdr alist))))))
