(use-package helm
  :init
  (helm-mode 1)

  :config
  ;; Open helm buffer inside current window
  (setq helm-split-window-in-side-p t)
  ;; Move to end or beginning when reaching top or bottom of source
  (setq helm-move-to-line-cycle-in-source t)

  ;; Rebind tab to run persistent action
  (define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
  ;; Make Tab work in terminal
  (define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)

  ;; Auto resize helm-mode to the smallest possible
  (helm-autoresize-mode 1)

  ;; Helm's M-x tab brings up a help description, very useful.
  (global-set-key (kbd "M-x") 'helm-M-x)

  ;; Helm does a better job than the default behavior
  (global-set-key (kbd "C-x b") 'helm-buffers-list)
  (global-set-key (kbd "C-x C-f") #'helm-find-files)

  ;; Show kill-ring
  (global-set-key (kbd "M-y") 'helm-show-kill-ring))
