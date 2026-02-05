;;; init-local.el --- Local config -*- lexical-binding: t; -*-

(when is-windows
  (require 'init-mswin))

(condition-case nil
    (progn
      (require 'init-vterm)
      (message "Loaded vterm config"))
  (error
   (require 'init-terminals)
   (message "vterm not available, loaded terminals config")))

(provide 'init-local)
