;; Use bash as the default shell program
(when (system-is-linux)
  (setq shell-file-name "/bin/bash"))

;; Multi-term works better with ZSH
(use-package multi-term)
