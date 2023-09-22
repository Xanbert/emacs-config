;;;; autoboot --- Auto boot applications

;;; autoboot.el
;;; Commentary:

;; This file contains autoboot configs

;;; Code:

(defun exec (command)
  (start-process-shell-command
 command nil command)
  )
(exec "picom")
;(exec "fcitx5")
(exec "/usr/lib/mate-polkit/polkit-mate-authentication-agent-1")

(provide 'autoboot)
;;; autoboot.el ends here
