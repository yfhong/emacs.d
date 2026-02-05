;;; init-preload-local.el --- Local preloaded config -*- lexical-binding: t -*-

;;; Commentary:
;; Local config, loaded before everything else.

;;; Code:

;; Defined here for early availability, analogous to *is-a-mac* in init.el
(defconst is-windows (eq system-type 'windows-nt)
  "Non-nil if the current OS is Windows.")

(defconst is-wsl (and (eq system-type 'gnu/linux)
                      (getenv "WSLENV"))
  "Non-nil if running in Windows Subsystem for Linux.")

(defun hmmyy/detect-debian ()
  "Detect if the current OS is Debian-based."
  (or (and (file-exists-p "/etc/os-release")
           (with-temp-buffer
             (insert-file-contents "/etc/os-release")
             (string-match-p "^ID=debian" (buffer-string))))
      (file-exists-p "/etc/debian_version")
      (and (executable-find "lsb_release")
           (string-match-p "debian" (shell-command-to-string "lsb_release -a")))))

(defconst is-debian (hmmyy/detect-debian)
  "Non-nil if the current OS is Debian-based.")



(provide 'init-preload-local)
;;; init-preload-local.el ends here
