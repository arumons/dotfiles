(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

(require 'auto-complete)
(require 'auto-complete-config) 
(global-auto-complete-mode t)

(define-key ac-completing-map (kbd "C-n") 'ac-next)
(define-key ac-completing-map (kbd "C-p") 'ac-previous)

(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-c f") 'helm-find-files)
(global-set-key (kbd "C-c e") 'execute-extended-command)

