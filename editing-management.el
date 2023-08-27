
(defun jump-to-char-forward ()
  (interactive)
  (let ((key (read-key-sequence "")))
    (re-search-forward key)))

(defun jump-to-char-backward ()
  (interactive)
  (let ((key (read-key-sequence "")))
    (re-search-backward key)))


(global-set-key "9" 'jump-to-char-forward)
(global-set-key (kbd "C-9") '(lambda ()
			       (interactive)
			       (insert "9")))

(global-set-key "8" 'jump-to-char-forward)
(global-set-key (kbd "C-9") '(lambda ()
			       (interactive)
			       (insert "9")))


;; Region key map

(progn
  (setq region-key-map (make-sparse-keymap))
  (when (use-region-p)
    (define-key region-key-map "9" 'jump-to-char-forward)
    (define-key region-key-map "8" 'jump-to-char-backward)
    (define-key region-key-map "s" 'kill-ring-save)))

(provide 'editing-management)
