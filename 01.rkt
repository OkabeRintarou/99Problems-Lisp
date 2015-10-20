(define (my-last alist)
	(if (null? alist) 
		null
		(if (null? (cdr alist))
			(car alist)
			(my-last (cdr alist)))))
