(defun my/autoinsert-yas-expand()
  "Disable indent for keeping the layout"
  (setq yas-indent-line 'fixed)
  (setq yas-wrap-around-region 'nil)
  "Replace text in yasnippet template."
  (yas-expand-snippet (buffer-string) (point-min) (point-max)))

(custom-set-variables
 '(auto-insert-mode t) ;;; enable auto-insert
 '(auto-insert 'other) ;;; insert if possible, but mark as unmodified
 ;;  '(auto-insert-query nil) ;;; If you don't want to be prompted before insertion
 '(auto-insert-directory "~/.emacs.d/auto-insert/")
 '(auto-insert-alist
   '(
     (("\\.py\\'" . "Python script") . ["python-header" my/autoinsert-yas-expand])
     )
   ))

(provide 'init-auto-insert)
