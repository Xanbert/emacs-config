;;;; ednc-init --- ednc config

;;; ednc-init.el
;;; Commentary:

;; This file contains config of ednc

;;; Code:

(use-package ednc
  :ensure t
  :init
  (defun show-notification-in-buffer (old new)
  (let ((name (format "Notification %d" (ednc-notification-id (or old new)))))
    (with-current-buffer (get-buffer-create name)
      (if new (let ((inhibit-read-only t))
                (if old (erase-buffer) (ednc-view-mode))
                (insert (ednc-format-notification new t))
					;(pop-to-buffer (current-buffer))
		)
        (kill-buffer)))))
  (add-hook 'ednc-notification-presentation-functions
          #'show-notification-in-buffer)
  (ednc-mode 1)
)
(provide 'ednc-init)
;;; ednc-init.el ends here
