(require-package 'adoc-mode)

(setq auto-mode-alist
      (append '(("adoc\\'" . adoc-mode)
                )
              auto-mode-alist))

(provide 'init-asciidoc)
