;;; cc-init.el -- C/C++ mode
;;; Commentary:

;;; Code:

(require 'use-package)

(use-package cc-mode
  :ensure t
  :config

  (use-package company-c-headers
    :ensure t)

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

  (defun my-cc-mode-hook ()
    (c-set-style "my-cc-style")
    (auto-fill-mode)
    (c-toggle-auto-hungry-state 1)
    (c-toggle-auto-newline -1)

    (global-company-mode)
    (add-to-list 'company-backends 'company-c-headers)
    (add-to-list 'company-c-headers-path-system "/usr/include/c++/7.2.0/")
    (define-key c-mode-map  [(tab)] 'company-complete)
    (define-key c++-mode-map  [(tab)] 'company-complete)


    (global-semanticdb-minor-mode 1)
    (global-semantic-idle-completions-mode 1)
    (semantic-add-system-include "/usr/include/c++/7.2.0/")
    (add-to-list 'semantic-default-submodes 'global-semantic-stickyfunc-mode)
    (global-semantic-idle-summary-mode 1)
    (semantic-mode 1))

  (add-hook 'c-mode-hook 'my-cc-mode-hook)
  (add-hook 'c++-mode-hook 'my-cc-mode-hook))

(provide 'cc-init)
;;; cc-init.el ends here
