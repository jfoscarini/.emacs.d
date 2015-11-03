;; Automatically build latex with pdflatex and preview
(when (executable-find "pdflatex")
  (use-package latex-preview-pane)
  (latex-preview-pane-enable)
)
