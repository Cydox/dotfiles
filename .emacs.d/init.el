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

;; evil mode
(require 'evil)
(evil-mode 0)
(setq scroll-step 1)
(setq scroll-margin 1)
(global-visual-line-mode t)

;; theme
(load-theme 'wombat)
;;(require 'nlinum)
;;(global-nlinum-mode nil)
(set-default-font "DejaVu Sans Mono-14")
;;(set-default-font "Monaco-13")

;; powerline
;;(require 'powerline)
;;(require 'airline-themes)
;;(powerline-default-theme)
;;(load-theme 'airline-light)
;;(setq powerline-arrow-shape 'arrow16)
;;(setq poweline-default-seperator 'box)

(set-cursor-color "#ff0083")
(blink-cursor-mode 0)
;;(global-hl-line-mode t)
;;(set-face-foreground 'highlight nil)
;;(set-face-background 'hl-line "#006084")

;; org-mode
(require 'org)
(require 'ob-ipython)
(setq org-confirm-babel-evaluate nil)
(require 'htmlize)
(require 'org-ref)
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(add-hook 'org-mode-hook 'org-hide-block-all)


;; key bindings
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; modes
(require 'markdown-mode)
(require 'go-mode)
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(require 'magit)

;; automatic stuff
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("158013ec40a6e2844dbda340dbabda6e179a53e0aea04a4d383d69c329fba6e6" "1b27e3b3fce73b72725f3f7f040fd03081b576b1ce8bbdfcb0212920aec190ad" "721bb3cb432bb6be7c58be27d583814e9c56806c06b4077797074b009f322509" "251348dcb797a6ea63bbfe3be4951728e085ac08eee83def071e4d2e3211acc3" "b563a87aa29096e0b2e38889f7a5e3babde9982262181b65de9ce8b78e9324d5" "3fa07dd06f4aff80df2d820084db9ecbc007541ce7f15474f1d956c846a3238f" "b59d7adea7873d58160d368d42828e7ac670340f11f36f67fa8071dbf957236a" default)))
 '(package-selected-packages
   (quote
    (swiper magit web-mode go-mode markdown-mode org-ref htmlize ob-ipython airline-themes powerline-evil powerline evil org-bullets org nlinum))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
