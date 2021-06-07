;;; Remove menus, bars and etc
(menu-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(scroll-bar-mode -1)

;;; Setting font
(defun efs/set-font-faces ()
  (message "Setting Faces.")
  (set-face-attribute 'default nil :font "Iosevka 9")
  (set-face-attribute 'fixed-pitch nil :font "Iosevka 9"))
(if (daemonp)
    (add-hook 'after-make-frame-functions
              (lambda (frame)
                (with-selected-frame frame
                  (efs/set-font-faces))))
  (efs/set-font-faces))

;;; Line number
(global-display-line-numbers-mode t)
(dolist (mode '(shell-mode-hook
                eshell-mode-hook
                term-mode-hook
                ansi-term-mode
                vterm-mode-hook
                org-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode 0))))

;; doom-themes
(use-package doom-themes
  :ensure t
  :config
  (setq doom-themes-enable-bold t
        doom-themes-enable-italic t)
  (load-theme 'doom-solarized-light t)
  (doom-themes-visual-bell-config)
  (doom-themes-org-config))

;; mode-line
(use-package mood-line
  :ensure t)
(mood-line-mode)
(setq display-time-day-and-date t
      display-time-format "%D %R"
      display-time-default-load-average nil)
(display-time-mode 1)

;; page-break-lines (dep for dashboard)
(use-package page-break-lines
  :ensure t)

;; dashboard
(use-package dashboard
  :ensure t
  :after page-break-lines
  :config
  (setq
   initial-buffer-choice (lambda () (get-buffer "*dashboard*"))
   dashboard-startup-banner 'logo
   dashboard-set-footer nil
   dashboard-banner-logo-title dashboard-footer
   dashboard-center-content t)
  (dashboard-setup-startup-hook))
