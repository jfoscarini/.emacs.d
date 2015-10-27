;; Disable default uglyness
(menu-bar-mode -1)
(setq inhibit-splash-screen t)
(when window-system
  (tool-bar-mode -1)
  (scroll-bar-mode -1))

;; All setups are in ./settings/
(add-to-list 'load-path (expand-file-name "settings" user-emacs-directory))
(load "auxiliary-functions.el")

;; Customized (local) settings are in ./custom.el
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))

;; Add repositories
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.org/packages/") t)
(package-initialize)

;; Add use package
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-always-ensure t)

;; Load settings
(load "misc-settings.el")
(when window-system
  (load "window-system-settings"))

;; Scratch buffer serves me better at org-mode
(setq initial-major-mode 'org-mode)
(setq initial-scratch-message "\
# This buffer is for notes you don't want to save. You can use
# org-mode markup (and all Org's goodness) to organise the notes.
# If you want to create a file, visit that file with C-x C-f,
# then enter the text in that file's own buffer.

")
