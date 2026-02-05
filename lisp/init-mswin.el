;;; init-mswin.el --- MS-Windows-specific customizations -*- lexical-binding: t -*-

;;; Commentary:

;;; Code:

;; Set PowerShell as the default shell
;; Determines PowerShell executable (pwsh or powershell).
(let ((powershell-executable (if (executable-find "pwsh") "pwsh" "powershell")))
  (setq explicit-shell-file-name powershell-executable)
  (setq explicit-powershell-args '("-NoLogo" "-NoProfile")))

;; Prevents garbled characters in shell buffer.
(set-language-environment "UTF-8")
;; Sets process encoding.
(setq-default process-coding-system-alist
              '(("[pP]wsh" . utf-8-dos)
                ("cmd" . gbk-dos))) ;; 'gbk-dos' might be needed for cmd.


(provide 'init-mswin)
;;; init-mswin.el ends here

