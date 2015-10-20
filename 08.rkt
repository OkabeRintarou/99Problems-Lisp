(define (compress alist)
  (if (null? alist)
      null
      (if (null? (cdr alist))
          (list (car alist))
          (let ((compress-rest (compress (cdr alist))))
             (if (eq? (car alist) (car compress-rest))
                 compress-rest
                 (cons (car alist) compress-rest))))))
