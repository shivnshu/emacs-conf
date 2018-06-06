;;; evil.el --- startup config for evil mode
;;; Commentary:

;;; Code:

(require 'use-package)

;; Load specific files
(use-package appearance :load-path "elisp/")
(use-package misc-pkg :load-path "elisp/")
(use-package mode-line :load-path "elisp/")
(use-package wspaces :load-path "elisp/")

; roslaunch highlighting
(add-to-list 'auto-mode-alist '("\\.launch$" . xml-mode))

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

(use-package evil-nerd-commenter
    :ensure t
    :config
(global-set-key (kbd "M-;") 'evilnc-comment-or-uncomment-lines))

(use-package evil-leader
  :ensure t
  :config
  (global-evil-leader-mode))

;; % to jump between matched tags
(use-package evil-matchit
    :ensure t
    :config
    (global-evil-matchit-mode 1))

;; Multi Edit
(use-package evil-multiedit
    :ensure t
    :config
    ;; Highlights all matches of the selection in the buffer.
    (define-key evil-visual-state-map "R" 'evil-multiedit-match-all)

    ;; Match the word under cursor (i.e. make it an edit region). Consecutive
    ;; presses will incrementally add the next unmatched match.
    (define-key evil-normal-state-map (kbd "M-d") 'evil-multiedit-match-and-next)
    ;; Match selected region.
    (define-key evil-visual-state-map (kbd "M-d") 'evil-multiedit-match-and-next)

    ;; Same as M-d but in reverse.
    (define-key evil-normal-state-map (kbd "M-D") 'evil-multiedit-match-and-prev)
    (define-key evil-visual-state-map (kbd "M-D") 'evil-multiedit-match-and-prev)

    ;; OPTIONAL: If you prefer to grab symbols rather than words, use
    ;; `evil-multiedit-match-symbol-and-next` (or prev).

    ;; Restore the last group of multiedit regions.
    (define-key evil-visual-state-map (kbd "C-M-D") 'evil-multiedit-restore)

    ;; RET will toggle the region under the cursor
    (define-key evil-multiedit-state-map (kbd "RET") 'evil-multiedit-toggle-or-restrict-region)

    ;; ...and in visual mode, RET will disable all fields outside the selected
    ;; region
    (define-key evil-motion-state-map (kbd "RET") 'evil-multiedit-toggle-or-restrict-region)

    ;; For moving between edit regions
    (define-key evil-multiedit-state-map (kbd "C-n") 'evil-multiedit-next)
    (define-key evil-multiedit-state-map (kbd "C-p") 'evil-multiedit-prev)
    (define-key evil-multiedit-insert-state-map (kbd "C-n") 'evil-multiedit-next)
    (define-key evil-multiedit-insert-state-map (kbd "C-p") 'evil-multiedit-prev)

    ;; Allows you to invoke evil-multiedit with a regular expression
    (evil-ex-define-cmd "ie[dit]" 'evil-multiedit-ex-match)

)

;; Load only after defining evil-insert-state-map
(use-package keybindings :load-path "elisp/")

;; Language specific packages
(use-package cc-init :load-path "elisp/")
(use-package py-init :load-path "elisp/")

(provide 'evil)
;;; evil.el ends here
