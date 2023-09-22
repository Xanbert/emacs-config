;;;; lang-python --- Language Python config

;;; lang-python.el
;;; Commentary:

;; This file contains config of language Python

;;; Code:

(defun python-config()
  (require 'dap-python)
  (setq dap-python-debugger 'debugpy)
  )

(use-package python-mode
  :ensure t
  :hook
  (python-mode . lsp-deferred)
  (python-mode . python-config)
  )

(provide 'lang-python)
;;; lang-python.el ends here
