;;; evil.el --- startup config for evil mode
;;; Commentary:

;;; Code:

(require 'use-package)

;; go to last change location
(use-package goto-chg
  :ensure t
  :commands goto-last-change
  :bind (("C-." . goto-last-change)
         ("C-," . goto-last-change-reverse)))

;; Set evil-mode
(use-package evil
  :ensure t
  :config
  (evil-mode t))

(use-package evil-leader
  :ensure t
  )
(global-evil-leader-mode)

(provide 'evil)

;;; evil.el ends here
