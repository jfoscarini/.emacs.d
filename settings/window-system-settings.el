(when (system-is-mac)
  ;; Fix annoying problems with the exec-path in Emacs.app
  (use-package exec-path-from-shell
    :config
    (exec-path-from-shell-initialize))
  ;; use command for meta (instead of option) in macs
  (setq mac-option-modifier 'super)
  (setq mac-command-modifier 'meta))
