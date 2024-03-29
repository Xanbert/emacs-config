;;;; flycheck-init --- flycheck config

;;; flycheck-init.el
;;; Commentary:

;; This file contains config of flycheck

;;; Code:

(use-package flycheck
  :ensure t
  :init (global-flycheck-mode)
  :hook
  (after-init . global-flycheck-mode)
  )

(use-package avy-flycheck
  :ensure t
  )

;; (use-package flycheck-grammerly
;;   :ensure t
;;   :init
;;   (flycheck-grammarly-setup)
;;   )

(provide 'flycheck-init)
;;; flycheck-init.el ends here
