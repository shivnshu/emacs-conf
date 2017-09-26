;;; cc-init.el -- C/C++ mode
;;; Commentary:

;;; Code:

(require 'use-package)

(use-package cc-mode
  :ensure t
  :config

  (use-package semantic
    :ensure t)
  (use-package stickyfunc-enhance
    :ensure t)

  (c-add-style "my-cc-style"
	       '("linux"
		 (indent-tabs-mode . nil)
		 (c-basic-offset . 4)
		 (c-offsets-alist . ((inline-open . 0)
				     (brace-list-open . 0)
				     (statement-case-open . +)))))

  (global-set-key (kbd "<f5>") (lambda ()
				 (interactive)
				 (setq-local compilation-read-command nil)
				 (call-interactively 'compile)))


)

(provide 'cc-init)
;;; cc-init.el ends here
