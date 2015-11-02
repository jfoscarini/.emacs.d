;; Blinking cursors are very distracting
(if (fboundp 'blink-cursor-mode) (blink-cursor-mode -1))

;; Show matching delimiters and color them
(show-paren-mode t)
(use-package rainbow-delimiters
  :init
  (add-hook 'prog-mode-hook 'rainbow-delimiters-mode))

;; Set hl-line face to have 2% darker then default face background
(require 'color)
(defun set-hl-line-color-based-on-theme ()
  (set-face-attribute 'hl-line nil
		      :foreground nil
		      :background (color-darken-name
				   (face-background 'default)
				   2)))

(add-hook 'global-hl-line-mode-hook 'set-hl-line-color-based-on-theme)
(global-hl-line-mode 1)
