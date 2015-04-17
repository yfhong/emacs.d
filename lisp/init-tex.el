(require-package 'auctex)
(require-package 'auto-complete-auctex)
(require-package 'ac-math)

(add-to-list 'ac-modes 'latex-mode)   ; make auto-complete aware of `latex-mode`

(defun ac-latex-mode-setup ()         ; add ac-sources to default ac-sources
  (setq ac-sources
     (append '(ac-source-math-unicode ac-source-math-latex ac-source-latex-commands)
               ac-sources)))

(add-hook 'TeX-mode-hook 'ac-latex-mode-setup)
(setq ac-math-unicode-in-math-p t)

;; (global-auto-complete-mode t)

(add-hook 'latex-mode-hook
          (lambda ()
            (setq TeX-engine 'xetex        ; use xelatex default
                  TeX-show-compilation nil ; don't display comilation windows
                  TeX-auto-untabify t  ; remove all tabs before saving
                  TeX-auto-save t      ; enable parse on save
                  TeX-parse-self t     ; enable parse on load
                  )
            (LaTeX-math-mode t)
            (TeX--PDF-mode t)           ; PDF mode enable, not plain
	    (auto-complete-mode t)
            ))

(provide 'init-tex)
