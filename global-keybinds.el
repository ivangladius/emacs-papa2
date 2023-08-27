
(require 'window-management)
(require 'buffer-management)

(require 'scripts)

(require 'eshell-scripts)

(require 'common-lisp)


;; Editing

(global-set-key (kbd "C-c j") #'comment-region)
(global-set-key (kbd "C-c u") #'uncomment-region)

(global-set-key (kbd "M-u") #'comment-or-uncomment-region)

;; Window

(global-set-key (kbd "M-4") #'delete-other-windows)
(global-set-key (kbd "M-3") #'delete-window)
(global-set-key (kbd "M-1") #'split-below)
(global-set-key (kbd "M-2") #'split-right)

(global-set-key (kbd "M-a") #'slime-fast-repl)

;; next window
(global-set-key (kbd "M-o") #'(lambda ()
		       (interactive)
		       (other-window 1)))

;; Buffer

;; last buffer
(global-set-key (kbd "M-l") #'last-buffer)

;; kill current buffer
(global-set-key (kbd "M-k") #'(lambda ()
			       (interactive)
			       (kill-buffer (current-buffer))))


;; File
;; visit file under cursor
(global-set-key (kbd "C-c C-j") #'visit-file-at-point)



;; Eshell

(global-set-key (kbd "C-<backspace>") #'(lambda ()
					(interactive)
					(run-this-in-eshell "clear 1")))


;; Copy
(global-set-key (kbd "M-v") #'yank)
;; Paste
(global-set-key (kbd "M-c") #'(lambda ()
				(interactive)
				(call-interactively 'kill-ring-save)))

(global-set-key (kbd "M-z") #'undo)

(global-set-key (kbd "M-0") #'(lambda ()
				 (interactive)
				 (find-file "~/.emacs.d/global-keybinds.el")))

(global-set-key (kbd "M-8") #'eval-buffer)
