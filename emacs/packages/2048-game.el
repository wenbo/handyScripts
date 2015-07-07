(defun 2048-game () "Start playing 2048."
  (interactive)
  (switch-to-buffer "2048")
  (2048-mode)
  (2048-init))


(defun 2048-init ()
  "Begin a game of 2048."
  (setq *2048-board* (make-vector (* *2048-columns* *2048-rows*)
                                  0))
  (setq *2048-combines-this-move* (make-vector (* *2048-columns* *2048-rows*)
                                               nil))
  (setq *2048-score* 0
        *2048-hi-tile* 2)
  (setq *2048-victory-value* *2048-default-victory-value*)
  (setq *2048-game-has-been-added-to-history* nil)
  (setq *2048-game-epoch* (current-time))
  (2048-insert-random-cell)
  (2048-insert-random-cell)
  (2048-init-tiles)
  (2048-print-board)
  (message "Good luck!"))

(defun 2048-insert-random-cell ()
  "Pick a number randomly, and insert it into a random cell."
  (let ((number-to-insert (elt *2048-possible-values-to-insert*
                               (random (length *2048-possible-values-to-insert*))))
        (row (random *2048-rows*))
        (column (random *2048-columns*)))
    (while (not (eq (2048-get-cell row column)
                    0))
      (setq row (random *2048-rows*))
      (setq column (random *2048-columns*)))
    (2048-set-cell row column number-to-insert)))


(defun 2048-init-tiles ()
  "Initialize each variable 2048-empty-N and 2048-tile-N with appropriate string and face."
  (mapc #'2048-init-tile
        *2048-numbers*))


		(defun 2048-init-tile (number)
		  "Initialize the tile holding NUMBER.
		
		This sets up both the tile to hold it, and the empty space around it."
		  (set (2048-empty-symbol number) (format "%7s" " "))
		  ;; if constant then all faces are applied to this one constant. (Symptom: all background is yellow)
		  ;; The bytecompiler is smart enough to see that (concat...) is a constant, but not (format...) ;-)
		  (set (2048-tile-symbol number) (format "%5s  " (2048-num-to-printable number)))
		  (when (> number 0)
		    (let ((face (2048-get-face number)))
		      (put-text-property 0 7 'font-lock-face face (2048-empty-tile number))
		      (put-text-property 0 7 'font-lock-face face (2048-tile number)))))



(defun 2048-print-board ()
  "Wipes the entire field, and prints the board."
  (let ((inhibit-read-only t))
    (erase-buffer)
    (dotimes (row *2048-rows*)

      ;;print the separator line on top of, and between cells
      (dotimes (col *2048-columns*)
        (insert "+-------"))
      (insert "+")
      (insert "\n")

      ;;print the empty line above numbers
      (dotimes (col *2048-columns*)
        (insert "|")
        (let ((current-value (2048-get-cell row col)))
          (insert (2048-empty-tile current-value))))
      (insert "|")
      (insert "\n")

      ;; print the number tiles
      (dotimes (col *2048-columns*)
        (insert "|")
        (let ((current-value (2048-get-cell row col)))
          (insert (2048-tile current-value))))
      (insert "|")
      (insert "\n")

      ;;print the empty line below numbers
      (dotimes (col *2048-columns*)
        (insert "|")
        (let ((current-value (2048-get-cell row col)))
          (insert (2048-empty-tile current-value))))
      (insert "|")
      (insert "\n"))

    ;;print the separator line on the bottom of the last row.
    (dotimes (col *2048-columns*)
      (insert "+-------"))
    (insert "+\n")
    (insert "\n")

    (let ((score-width (if (= 0 *2048-score*)
                           1
                         (ceiling (log *2048-score* 10)))))
      (insert (format "%10s%s%s\n" "/" (make-string (+ 9
                                                      score-width)
                                                   ?\=) "\\"))
      (insert (format "%10s %s %d %s\n" "|" "Score:" *2048-score* "|"))
      (insert (format "%10s%s%s\n" "\\" (make-string (+ 9
                                                       score-width)
                                                    ?\=) "/")))
    (insert "\n")

    (2048-print-help)

    (insert "\n")

    ;; print score and history
    (insert (format "%10s%s%s\n" "/" (make-string 13 ?\=) "\\"))
    (insert (format "%24s\n" "| HIGH SCORES |"))
    (insert (format "%10s%s%s\n" "\\" (make-string 13 ?\=) "/"))
    (insert "\n")
    (insert (format "%8s  %7s  %7s     %4s\n" "Score" "Hi-Tile" "Date" "Duration"))
    (mapc #'(lambda (x)
              (insert (format "%8d  %7d  %10s  %s\n"
                              (elt x 0) (elt x 1) (elt x 2) (format-time-string "%H:%M:%S" (elt x 3) t))))
          *2048-history*)

    (goto-char (point-min))))


(defmacro 2048-game-move (&rest body)
  "Perform the game move indicated by BODY.

This macro is used to do some housekeeping around the move."
  `(progn (setq *2048-combines-this-move* (make-vector (* *2048-columns* *2048-rows*)
                                               nil))

          ,@body
          (2048-print-board)
          (2048-check-game-end)))


(defun 2048-move (from-row from-column delta-row delta-column)
  "Try to move the number in (FROM-ROW, FROM-COLUMN)

Move it by (DELTA-ROW, DELTA-COLUMN).
This succeeds when the destination (to-row, to-column) either is 0,
or is the same value as (from-row, from-column).
If (to-row, to-column) is zero, cascade and try to move further.
Returns t if we were able to move; otherwise nil."
  (let ((to-row (+ from-row delta-row))
        (to-column (+ from-column delta-column)))
    (when (in-bounds to-row to-column)
      (2048-debug (format "moving the cell (%d, %d) by (%d, %d) to (%d, %d)" from-row from-column delta-row delta-column to-row to-column))
      (let ((from-val (2048-get-cell from-row from-column))
            (to-val (2048-get-cell to-row to-column)))
        (cond ((eq from-val to-val)
               (unless (or (eq from-val 0)
                           (2048-was-combined-this-turn to-row to-column))
                 (2048-debug (format "combining (%d, %d) into (%d, %d)" from-row from-column to-row to-column))
                 (let ((combined-value (* from-val 2)))
                   (unless (boundp (2048-tile-symbol combined-value))
                     (2048-init-tile combined-value))
                   (2048-set-cell to-row to-column combined-value)
                   (setq *2048-score* (+ *2048-score* combined-value))
                   (2048-set-cell from-row from-column 0)
                   (2048-set-was-combined-this-turn to-row to-column))))
              ((eq to-val 0)
               (2048-set-cell to-row to-column from-val)
               (2048-set-cell from-row from-column 0)
               (2048-move to-row to-column delta-row delta-column)
               t)
              (t nil)))))) ;;ugh, need to pass out whether something was combined, and pass that to the _next_ call to 2048-move. We see bugs on rows like 4 0 4 0.

(defun in-bounds (row column)
  "Return t if (ROW, COLUMN) is in the bounds of the field."
  (and (>= row 0)
       (>= column 0)
       (< row *2048-rows*)
       (< column *2048-columns*)))


(defun 2048-up ()
  "Shift the board up."
  (interactive)
  (2048-game-move
   (setq *2048-combines-this-move* (make-vector (* *2048-columns* *2048-rows*)
                                                nil))
   (let ((has-moved nil))
     (dotimes (col *2048-columns*)
       (dolist (row (number-sequence 1
                                     (1- *2048-rows*)))
         (setq has-moved (or (2048-move row col -1 0)
                             has-moved))))
     (when has-moved
       (2048-insert-random-cell)))))
