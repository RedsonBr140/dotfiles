;; Replace "yes" and "no" to "y" and "n"
(fset 'yes-or-no-p 'y-or-n-p)

;;; Packages
;; Auto complete
(use-package auto-complete
  :ensure t
  :init
  (progn
    (ac-config-default)
    (global-auto-complete-mode t)))

;; Binds helper
(use-package which-key
  :ensure t
  :config (which-key-mode))
