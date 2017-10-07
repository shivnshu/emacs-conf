;;; keybindings.el --- Keybindings
;;; Commentary:

;;; Code:

(define-key evil-insert-state-map (kbd "C-c") 'cua-copy-region)
(define-key evil-insert-state-map (kbd "C-v") 'cua-paste)
(define-key evil-insert-state-map (kbd "C-x") 'cua-cut-region)

(provide 'keybindings)
;;; keybindings.el ends here
