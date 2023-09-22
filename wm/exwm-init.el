;;;; exwm-init --- exwm config 

;;; exwm-init.el
;;; Commentary:

;; This file contains config of exwm

;;; Code:

(use-package exwm
  :ensure t
  :init
  (require 'exwm)
  (require 'exwm-config)
  (require 'exwm-keys)
  (require 'exwm-systemtray)
  (require 'ednc-init)
  (require 'autoboot)
  (require 'exwm-misc)
  (require 'applications)
  (require 'im)
					;(exwm-config-example)
  (exwm-systemtray-enable)
  )

(provide 'exwm-init)
;;; exwm-init.el ends here
