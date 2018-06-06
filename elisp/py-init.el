;;; py-init.el -- python ide
;;; Commentary:

;;; Code:

(require 'use-package)

(use-package elpy
    :ensure t
    :functions (elpy-enable)
    :mode ("\\.py\\'" . python-mode)
    :config
    (elpy-enable))

(provide 'py-init)
;;; py-init.el ends here
