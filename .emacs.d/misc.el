;;; Backup files
(setq backup-directory-alist `(("." . "~/.emacs.d/backups")))

;; For testing packages
(use-package try
  :ensure t)

;; vterm
(use-package vterm
  :ensure t
  :commands vterm)

;; org
(use-package org-roam
  :ensure t
  :hook (after-init . org-roam-mode)
  :custom
  (make-directory "~/.emacs.d/org-files/")
  (org-roam-directory "~/.emacs.d/org-files/")
  :bind (:map org-roam-mode-map
              (("C-c n l" . org-roam)
               ("C-c n f" . org-roam-find-file)
               ("C-c n g" . org-roam-graph))
              :map org-mode-map
              (("C-c n i" . org-roam-insert))
              (("C-c n I" . org-roam-insert-immediate))))
(add-hook 'after-init-hook 'org-roam-mode)