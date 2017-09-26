;;; appearance.el --- config for appearance
;;; Commentary:

;;; Code:

(require 'use-package)

;; Theme
(use-package zenburn-theme
  :ensure t
  :config
  (load-theme 'zenburn t))

;; Highlight the current line
(global-hl-line-mode)

;; cursor-chg package (change cursor as per the context)
(use-package cursor-chg
  :ensure t
  :config
  (change-cursor-mode 1))

;; Awesome font with appropriate size
(setq default-frame-alist '((font . "Literation Mono Powerline-14")
			    (alpha 95 95)))

;; tools, scroll etc.
(tool-bar-mode -1)
(scroll-bar-mode -1)
(blink-cursor-mode -1)
(menu-bar-mode -1)

(provide 'appearance)
;;; appearance.el ends here
