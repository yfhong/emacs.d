(require-package 'perl-completion)

;; (load "pde-load")

(setq auto-mode-alist
      (append '(("psgi\\'" . perl-mode)
                )
              auto-mode-alist))

(provide 'init-perl)
