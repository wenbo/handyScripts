version 1

(defun fib (n a b c)
	(if (< c n) (fib n b (+ a b) (+ 1 c) )
		(if (= c n) b a) ))

(defun fibonacci (n) (if (< n 2) n (fib n 0 1 1) ))

[edit]version 2

(defun fibonacci (n)
	(let ( (vec) (i) (j) (k) )
		(if (< n 2) n
			(progn
				(setq vec (make-vector (+ n 1) 0) i 0 j 1 k 2)
				(setf (aref vec 1) 1)
				(while (<= k n)
					(setf (aref vec k) (+ (elt vec i) (elt vec j) ))
					(setq i (+ 1 i) j (+ 1 j) k (+ 1 k) ))
				(elt vec n) ))))

Eval:

(insert
 (mapconcat '(lambda (n) (format "%d" (fibonacci n) ))
						(number-sequence 0 15) " ") )

Output:
0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610
