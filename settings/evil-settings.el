;; Evil mode
(use-package evil
  :init
  (bind-key* "C--" 'split-window-below)
  (bind-key* "C-/" 'split-window-right))
  (evil-mode 1)
