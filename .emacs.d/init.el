(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)
(global-set-key (kbd "TAB") 'indent-region)

(require 'evil)
(evil-mode 1)
(define-key evil-insert-state-map "\C-n" nil)
(define-key evil-insert-state-map "\C-p" nil)
(define-key minibuffer-local-map "\C-p" nil)
(define-key minibuffer-local-map "\C-n" nil)
(define-key evil-ex-completion-map "\C-p" nil)
(define-key evil-ex-completion-map "\C-n" nil)

(require 'auto-complete)
(require 'auto-complete-config) 
(global-auto-complete-mode t)
(setq ac-auto-start 1)

(define-key ac-mode-map (kbd "C-n") 'auto-complete)
(define-key ac-mode-map (kbd "C-p") 'auto-complete)
(define-key ac-completing-map (kbd "C-n") 'ac-next)
(define-key ac-completing-map (kbd "C-p") 'ac-previous)

(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-c f") 'helm-find-files)
(global-set-key (kbd "C-c e") 'execute-extended-command)

