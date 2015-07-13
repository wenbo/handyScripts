(defun silly-loop (n)
	"Return time before and after N iterations of a loop."
	(let ((t1 (current-time-string)))
		(while (> (setq n (1- n))
							0))
		(list t1 (current-time-string))))

(silly-loop 5000000) ;;C-x C-e

(byte-compile 'silly-loop)
(silly-loop 5000000)


(setq avector [1 two '(three) "four" [five]])


(length '(1 2 3))


(defun function21 (a b &optional c d)
	(format "1111%7s"  a)
	(format "1111%7s"  b)
	(format "1111%7s"  c)
	(format "1111%7s"  d))

(function21 "st1" "str2")
