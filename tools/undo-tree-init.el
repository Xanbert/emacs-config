;;;; undo-tree-init --- undo-tree config

;;; undo-tree-init.el
;;; Commentary:

;; This file config of undo-tree

;;; Code:

(use-package undo-tree
  :ensure t
  :init (global-undo-tree-mode)
  :config
  (setq undo-tree-history-directory-alist '(("." . "~/.emacs.d/undo")))
  )

(provide 'undo-tree-init)
;;; undo-tree-init.el ends here
