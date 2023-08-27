(require 'ido)
(require 'ido-vertical-mode)



(autoload 'idomenu "idomenu" nil t)

(setq ido-vertical-define-keys 'C-n-and-C-p-only)
(setq ido-vertical-show-count t)
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)

(setq ido-use-faces t)
(set-face-attribute 'ido-vertical-only-match-face nil
                    :foreground "yellow")


(ido-mode 1)
(ido-vertical-mode 1)

(global-set-key (kbd "M-q") 'ido-find-file)
(global-set-key (kbd "M-w") 'ido-switch-buffer)
(global-set-key (kbd "M-e") 'ido-dired)




