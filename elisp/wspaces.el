;;; wspaces.el -- Whitespaces (Tabs are evil :P)
;;; Commentary:

;;; Code:

(require 'use-package)

(use-package ethan-wspace
  :ensure t
  :config
  (setq mode-require-final-newline nil)
  (global-ethan-wspace-mode 1))

(provide 'wspaces)
;;; wspaces.el ends here
