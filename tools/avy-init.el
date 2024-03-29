;;;; avy-init --- Avy config

;;; avy-init.el
;;; Commentary:

;; This file contains avy's config

;;; Code:

(use-package avy
  :ensure t
  :after hydra
  )

(use-package ace-pinyin
  :ensure t
  :after avy
  :config
  (ace-pinyin-global-mode)
  :bind ("C-j" . hydra-avy/body)
  :hydra
  (hydra-avy (:hint nil :exit t)
	     "
_c_: Go to Char _l_: Go to Line _w_ Go to Word _j_ Go to Char Timer"
	     ("c" ace-pinyin-jump-char)
	     ("l" avy-goto-line)
	     ("w" ace-pinyin-goto-word-1)
	     ("j" ace-pinyin-jump-word)
	     ))
(provide 'avy-init)
;;; avy-init.el ends here
