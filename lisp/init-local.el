;;; init-local.el --- Local config -*- lexical-binding: t; -*-

(when is-windows
  (require 'init-mswin))

;; Set default font and size (English part unchanged, size set to 14pt)
(set-face-attribute 'default nil :family "Serif" :height 140) ; Set default font to 14pt, preferring serif

;; Set Chinese font to Song Ti and ensure its size is also 14pt
(set-fontset-font "fontset-default" '((cn-gb-2312 . "Song Ti")
                                      (cn-gb-extended . "Song Ti")
                                      (kana . "Song Ti"))
                  nil 'append)
(set-fontset-font "fontset-default" 'unicode "Song Ti") ; Ensure unicode characters use Song Ti where applicable

(condition-case nil
    (progn
      (require 'init-vterm)
      (message "Loaded vterm config"))
  (error
   (require 'init-terminals)
   (message "vterm not available, loaded terminals config")))

(provide 'init-local)
