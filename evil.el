;;; evil.el --- startup config for evil mode
;;; Commentary:

;;; Code:

(require 'use-package)

;; Load specific files
(use-package mode-line :load-path "elisp/")

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

(provide 'evil)

;;; evil.el ends here
