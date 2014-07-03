(require-package 'auctex)

(add-hook 'latex-mode-hook
          (lambda ()
            (setq TeX-engine 'xetex        ; use xelatex default
                  TeX-show-compilation nil ; don't display comilation windows
                  TeX-auto-untabify t      ; remove all tabs before saving
                  TeX-auto-save t          ; enable parse on save
                  TeX-parse-self t         ; enable parse on load
                  )
            (LaTeX-math-mode t)
            (TeX--PDF-mode t)       ; PDF mode enable, not plain
            ))

(provide 'init-tex)
