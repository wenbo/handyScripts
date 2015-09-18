(defmacro inc (var)
	(list 'setq var (list '1+ var)))

(defmacro for (var from init to final do &rest body)
	  "Execute a simple \"for\" loop.
For example, (for i from 1 to 10 do (print i))."
		(list 'let (list (list var init))
					(cons 'while (cons (list '<= var final)
														 (append body (list (list 'inc var)))))))



(macroexpand '(for i from 1 to 3 do
		 (setq square (* i i))
		 (princ (format "\n%d %d" i square))))

→
(let ((i 1))
	(while (<= i 3)
		(setq square (* i i))
		(princ (format "%d      %d" i square))
		(inc i)))

-|1       1
-|2       4
-|3       9
⇒ nil




(defmacro for (var from init to final do &rest body)
	  "Execute a simple \"for\" loop.
For example, (for i from 1 to 10 do (print i))."
		`(let ((,var ,init))
			 (while (<= ,var ,final)
				 ,@body
				        (inc ,var))))
(for i from 1 to 3 do
		 (setq square (* i i))
		    (princ (format "\n%d %d" i square)))
