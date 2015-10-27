;; Automatically match delimiters
(electric-pair-mode 1)
(setq electric-pair-pairs '((?\" . ?\")
			    (?\{ . ?\})
			    ))

;; Backup and Autosave files should be in .emacs.d
(make-directory "~/.emacs.d/autosaves/" t)
(setq auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))

(make-directory "~/.emacs.d/backups/" t)

(setq  backup-directory-alist '((".*" . "~/.emacs.d/backups/"))
       version-control t
       delete-old-versions t
       kept-new-versions 4
       kept-old-versions 1)

;; Disable for sudo and su
(setq backup-enable-predicate
      (lambda (name)
	(and (normal-backup-enable-predicate name)
	     (not
	      (let ((method (file-remote-p name 'method)))
		(when (stringp method)
		  (member method '("su" "sudo"))))))))

;; Activate ido with flx matching
(use-package flx-ido
  :config
  (ido-mode 1)
  (ido-everywhere 1)
  (flx-ido-mode 1)
  (setq ido-enable-flex-matching 1
	ido-use-faces nil))

;; Trailing whitespaces are not acceptable
(add-hook 'before-save-hook 'delete-trailing-whitespace)
