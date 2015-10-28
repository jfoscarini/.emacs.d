(use-package monokai-theme
  :init
  (load-theme 'monokai t))

;; Xclip for seamless integration with system copy/paste buffers
(when (executable-find "xclip")
  (use-package xclip
    :config
    (xclip-mode 1)))

;; global linum mode, keeping height constant to avoid tearing
(global-linum-mode 1)
(eval-after-load "linum"
  '(set-face-attribute 'linum nil :height 115))

(when (system-is-mac)
  ;; Fix annoying problems with the exec-path in Emacs.app
  (use-package exec-path-from-shell
    :config
    (exec-path-from-shell-initialize))
  ;; use command for meta (instead of option) in macs
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier 'meta))

;; Source code pro is a monospaced font from google fonts
(set-default-font "Source Code Pro 13")
