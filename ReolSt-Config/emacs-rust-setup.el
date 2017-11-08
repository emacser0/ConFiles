;emacs-racer setup                                                              
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)

(add-hook 'racer-mode-hook #'company-mode)

(require 'rust-mode)
(define-key rust-mode-map (kbd "C-<f12>") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

;(unless (getenv "RUST_SRC_PATH")                                               
;  (setenv "RUST_SRC_PATH" (expand-file-name "~/path/to/rust/src")))            


