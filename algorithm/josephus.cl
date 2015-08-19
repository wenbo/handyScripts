（defun josephus-main )
（let (lt (make-array 20 :fill-pointer 0)
（dotimes (var 20）
（vector-push var lt)
（josephus-loop lt)
（defun josephus-loop(lt)
（if (= (length lt) 1）
（progn
（format t "~a~%" lt)
（return-from josephus-loop)
（if (>= (length lt) 5）
（progn
（let (setv (remove (elt lt 4）lt)
（josephus-loop setv)
（progn
（let (setv (remove (elt lt (if (= (length lt) (- 4 (length lt) (- 4 (length lt) 1） (- 4 (length lt) lt)
（josephus-loop setv)
