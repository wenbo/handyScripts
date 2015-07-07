(defun count-words-buffer ( )
	(let ((count 0))
		(save-excursion
			(goto-char (point-min))
			(while (< (point) (point-max))
				(forward-word 1)
				(setq count (1+ count)))
			(message "buffer contains %d words." count))))

(count-words-buffer)
;; M-x (eval-buffer)
