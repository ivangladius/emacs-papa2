
(defun split-right ()
  (interactive)
  (split-window-right)
  (other-window 1))

(defun split-below ()
  (interactive)
  (split-window-below)
  (other-window 1))


(provide 'window-management)
