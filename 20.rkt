(define (remove-at alist index)
  (define (remove-at-iter alist result cur)
    (if (null? alist)
        result
        (remove-at-iter (cdr alist)
                        (if (= cur 1)
                            result
                            (append result (list (car alist))))
                        (- cur 1))))
  (remove-at-iter alist '() index))
