;; setup default user infomation
(setq user-full-name "Hong Yifan (homer)")
(setq user-mail-address "hyfing@gmail.com")

;; default directory
(setq default-directory "C:/Users/homer/Documents")

;; enable time stamp
(setq time-stamp-pattern nil)
(setq time-stamp-active t)
(setq time-stamp-warn-inactive t)
(setq time-stamp-format "%:y-%02m-%02d %02H:%02M:%02S, by %u")
(setq time-stamp-start "Last modified:[ \t]+\\\\?[\"<]+")
(setq time-stamp-end: "\\\\?[\">]+\n")
(add-hook 'before-save-hook 'time-stamp)

;; latitude and longitude
(setq calendar-latitude 30.2500) ;;Latitude, positive for north
(setq calendar-longitude 126.1667) ;;longitude, positive for east
(setq calendar-location-name "Hangzhou") ;;location

;; move mouse away
(mouse-avoidance-mode 'animate) ;; (mouse-avoidance-mode "banish")

;; delete trailing whitespace and newline automatically while saving the file
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(defun my-delete-trailing-blank-lines ()
  "Deletes all blank lines at the end of the file"
  (interactive)
  (save-excursion
    (save-restriction
      (widen)
      (goto-char (point-max))
      (delete-blank-lines)
      (let ((trailnewlines (abs (skip-chars-backward "\n\t"))))
        (if (> trailnewlines 1)
            (progn
              (delete-char trailnewlines)))))))

;; ==================================================
;; jump between a pair of parens mathed
;; press % on a parentheis char will jump to the other one of this pair
;; otherwise, insert a "%" itself
(global-set-key "%" 'my-match-paren)
(defun my-match-paren (arg)
  "Go to the matching paren if on a paren; otherwise insert %."
  (interactive "p")
  (cond ((looking-at "\\s\(") (forward-list 1) (backward-char 1))
        ((looking-at "\\s\)") (forward-char 1) (backward-list 1))
	(t (self-insert-command (or arg 1)))))
;; end [] match

(provide 'init-local)
