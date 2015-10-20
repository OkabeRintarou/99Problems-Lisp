(define (rotate alist cmove)
  (let* ((len (length alist))
        (cmove-act (if (< cmove 0) (+ len cmove) cmove)))
    (if (or (null? alist) (= cmove-act 0))
        alist
        (rotate (append (cdr alist) (list (car alist))) (- cmove-act 1)))))
