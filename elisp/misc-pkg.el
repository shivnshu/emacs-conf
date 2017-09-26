;;; misc-pkg.el -- Misc packages
;;; Commentary:

;;; Code:

(require 'use-package)

;; Complete Anything
(use-package company
  :ensure t
  :config

  (add-hook 'after-init-hook 'global-company-mode))

;; Sweet relative numbering
(use-package nlinum-relative
  :ensure t
  :config
  (nlinum-relative-on)
  (add-hook 'prog-mode-hook 'nlinum-relative-mode)
  (setq nlinum-relative-redisplay-delay 0.5)   ;; delay
  (setq nlinum-relative-current-symbol "->") ;; or "" for current line
(setq nlinum-relative-offset 1))

;; Switch windows
(use-package switch-window
  :ensure t
  :bind (("M-o"   . switch-window)
         ("C-x o" . other-window)))

;; parenthesis etc. highlighter
(use-package rainbow-delimiters
  :ensure t
  :config
(add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

;; Retain fp to the same location
(use-package saveplace
  :init (save-place-mode))

;; Ctrl-c, v, x functionality
(use-package cua-base
  :ensure t
  :config
  (cua-mode t)
    (setq cua-auto-tabify-rectangles nil) ;; Don't tabify after rectangle commands
    (transient-mark-mode 1) ;; No region when it is not highlighted
    (setq cua-keep-region-after-copy t) ;; Standard Windows behaviour
    )

;; Use C-c right or left to get back previous buffer states
(use-package winner
  :ensure t
  :config
  (winner-mode 1))

;; Show matching tag
(use-package paren
  :ensure t
  :config
  (show-paren-mode 1))

;; Tramp -- remote emacs
(use-package tramp
  :ensure t
  :defer t
  :config
  (setq tramp-default-method "ssh")
  (setq tramp-auto-save-directory "~/.emacs.d/tramp-autosave-dir")
(setq password-cache-expiry 3600))

;; Docker-tramp -- edit files into docker containers
(use-package docker-tramp
  :ensure t
  )

(provide 'misc-pkg)
;;; misc-pkg.el ends here
