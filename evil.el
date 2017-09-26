;;; evil.el --- startup config for evil mode
;;; Commentary:

;;; Code:

(require 'use-package)

;; Load specific files
(use-package appearance :load-path "elisp/")
(use-package mode-line :load-path "elisp/")
(use-package wspaces :load-path "elisp/")
(use-package misc-pkg :load-path "elisp/")

(use-package cc-init :load-path "elisp/")

;; go to last change location
(use-package goto-chg
  :ensure t
  :commands goto-last-change
  :bind (("C-." . goto-last-change)
         ("C-," . goto-last-change-reverse)))

;; Undo tree
(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode))

;; Set evil-mode
(use-package evil
  :ensure t
  :config
  (evil-mode t))

(use-package evil-leader
  :ensure t
  :config
  (global-evil-leader-mode))

;; % to jump between matched tags
(use-package evil-matchit
    :ensure t
    :config
    (global-evil-matchit-mode 1))

(provide 'evil)
;;; evil.el ends here
