;;;; dirvish-init --- dirvish config

;;; dirvish-init.el
;;; Commentary:

;; This file contains config of dirvish

;;; Code:

(use-package dirvish
  :ensure t
  :config
  (dirvish-override-dired-mode)
  :bind
  ("H-d" . dirvish))

(provide 'dirvish-init)
;;; dirvish-init.el ends here
