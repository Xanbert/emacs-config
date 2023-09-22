;;;; im --- input method config

;;; im.el
;;; Commentary:

;; This file contains config of input method

;;; Code:

(use-package pyim
  :ensure t)
(use-package pyim-basedict
  :ensure t)
(require 'pyim)
(require 'pyim-basedict)
(require 'pyim-cregexp-utils)
(pyim-basedict-enable)
(setq default-input-method "pyim")
(setq pyim-page-length 5)
(pyim-activate)
(pyim-default-scheme 'xiaohe-shuangpin)
(require 'exwm-xim)
(exwm-xim-enable)
(push ?\C-\\ exwm-input-prefix-keys)
(setenv "GTK_IM_MODULE" "xim")
(setenv "QT_IM_MODULE" "xim")
(setenv "XMODIFIERS" "@im=exwm-xim")
(setenv "CLUTTER_IM_MODULE" "xim")
(provide 'im)
;;; im.el ends here
