(require-package 'yasnippet)

(require 'yasnippet)

;; my private snippets
;; (setq my-yasnippets (expand-file-name "~/.emacs.d/my-yasnippets"))
;; (if (and (file-exists-p my-yasnippets)
;;          (not (member my-yasnippets yas-snippet-dirs)))
;;     (add-to-list 'yas-snippet-dirs my-yasnippets))

(global-set-key (kbd "C-c k") 'yas-expand)

;; the old way to initialize yasnippet
;; (yas-global-mode 1)

(yas-reload-all)
(add-hook 'prog-mode-hook
          '(lambda ()
             (yas-minor-mode)))

(provide 'init-yasnippet)
