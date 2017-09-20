;;; init.el -- Main load file for emacs
;;; Commentary:

;;; Code:

(require 'package)

;; Set up repositories of packages
(setq
 package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                    ("org" . "http://orgmode.org/elpa/")
                    ("melpa" . "http://melpa.org/packages/")
                    ("melpa-stable" . "http://stable.melpa.org/packages/")
                    ("marmalade" . "http://marmalade-repo.org/packages/")
                    ("elpy" . "https://jorgenschaefer.github.io/packages/")))

(package-initialize)

(add-to-list 'load-path "elisp/")

;; use-package is required for subsequent config
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))

;(load-file "$HOME/.emacs.d/evil.el")

;; Set frame title
(setq frame-title-format '(buffer-file-name "%f - Emacs" ("%b - Emacs")))

;; Desktop save mode
(desktop-save-mode 1)

;; Misc
(setq line-move-visual 1) ; line wraps on word endings
(visual-line-mode 1)
(add-hook 'text-mode-hook 'turn-on-visual-line-mode)

;; set initial welcome mode
(setq initial-major-mode 'lisp-interaction-mode)

(provide 'init)
;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
