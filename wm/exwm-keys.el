;;;; exwm-keys --- exwm keybinding config

;;; exwm-keys.el
;;; Commentary:

;; this file contains exwm keybinding config

;;; Code:

(setq exwm-input-global-keys
      `(([?\s-r] . exwm-reset)
        ([?\s-w] . exwm-workspace-switch)
	([?\s-x] . dmenu)
	([?\s-j] . (lambda () (interactive)
		     (exec "firefox")
		     ))
	([?\s-t] . dirvish)
	([?\s-&] . (lambda (command)
                     (interactive (list (read-shell-command "$ ")))
                     (start-process-shell-command command nil command)))
        ,@(mapcar (lambda (i)
                    `(,(kbd (format "s-%d" i)) .
                      (lambda ()
                        (interactive)
                        (exwm-workspace-switch-create ,i))))
                  (number-sequence 0 9)))
      )
(setq exwm-input-simulation-keys
      '(([?\C-b] . [left])
        ([?\C-f] . [right])
        ([?\C-p] . [up])
        ([?\C-n] . [down])
        ([?\C-a] . [home])
        ([?\C-e] . [end])
        ([?\M-v] . [prior])
        ([?\C-v] . [next])
        ([?\C-d] . [delete])
        ([?\C-k] . [S-end delete])))

(provide 'exwm-keys)
;;; exwm-keys.el ends here
