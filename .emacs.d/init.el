;; dont show the welcome screen
(setq inhibit-startup-screen t)


;; MELPA stuff
(require 'package) ;; You might already have this line
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (url (concat (if no-ssl "http" "https") "://melpa.org/packages/")))
  (add-to-list 'package-archives (cons "melpa" url) t))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

;; dont show menu bar and stuff
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1) 
(setq column-number-mode t)

;; theme
(load-theme 'misterioso)
;;(require 'nlinum)
;;(global-nlinum-mode t)
;;(set-default-font "DejaVu Sans Mono-13")
(set-default-font "Monaco-12")

(set-cursor-color "#ff0083")
(blink-cursor-mode 0)
(global-hl-line-mode t)
(set-face-foreground 'highlight nil)
(set-face-background 'hl-line "#006084")

;; org-mode
(require 'org)
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; key bindings
(global-set-key (kbd "C-x C-b") 'ibuffer)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (org-bullets org nlinum))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )