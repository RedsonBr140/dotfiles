;;; Package Manager
(require 'package)
(setq package-enable-at-startup nil)

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/")
	     '("elpa" . "https://elpa.gnu.org/packages/"))

(package-initialize)

;; Install Use-package
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
;; Negócio inútil
(require 'elcord)
(elcord-mode)
;; Load config
(add-to-list 'load-path "~/.emacs.d/custom/")
(load-file "~/.emacs.d/helper.el") ;; key binds helper, completion...
(load-file "~/.emacs.d/visual.el") ;; theme, mode-line, font...
(load-file "~/.emacs.d/misc.el")   ;; miscellaneous
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   '("4b0e826f58b39e2ce2829fab8ca999bcdc076dec35187bf4e9a4b938cb5771dc" default))
 '(package-selected-packages
   '(## elcord which-key vterm use-package try org-roam mood-line doom-themes dashboard auto-complete)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
