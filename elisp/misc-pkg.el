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
(setq nlinum-relative-offset 0))

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

(provide 'misc-pkg)
;;; misc-pkg.el ends here
