
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
;; and `package-pinned-packages`. Most users will not need or want to do this.
;;(add-to-list 'package-archives '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")

(package-install 'use-package)

(setq inhibit-startup-screen t)

(setq inferior-lisp-program "/usr/bin/sbcl")

;;(setq warning-minimum-level :error)
(setq native-comp-async-report-warnings-errors 'silent)

(load "~/.emacs.d/settings")

(load "~/.emacs.d/scripts")


(load "~/.emacs.d/lisp")

(load "~/.emacs.d/ido-config")

(load "~/.emacs.d/smex-config")

;; Window Managment

(load "~/.emacs.d/window-management")

;; Buffer Managment

(load "~/.emacs.d/buffer-management")

;; Editing Managment

(load "~/.emacs.d/editing-management")


;; eshell

(load "~/.emacs.d/eshell-config")

(load "~/.emacs.d/eshell-scripts")


(load "~/.emacs.d/common-lisp")

(load "~/.emacs.d/global-keybinds")



;;(defun start-sly ()
;;  (interactive)
;;  (let ((display-buffer-alist '((".*" display-buffer-reuse-window))))
;;    (sly)))


(defun open-windows ()
  (mapcar #'buffer-name (mapcar #'window-buffer (window-list))))

(defun start-sly ()
  (find-file "code.lisp")
  (sly)
  (let ((repl-name (buffer-name)))
    (other-window 1)
    (delete-other-windows)
    (split-right)
    (other-window 1)
    (switch-to-buffer repl-name)))




(start-sly)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(ivy use-package sly slime))
 '(warning-suppress-log-types '((comp) (comp)))
 '(warning-suppress-types '((comp))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
