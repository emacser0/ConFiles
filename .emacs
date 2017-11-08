(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

;auto-enable company-mode
(add-hook 'after-init-hook 'global-company-mode)

;configurate flycheck-irony
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

(global-flycheck-mode 1)

;flycheck-rust setup
(add-hook 'flycheck-mode-hook #'flycheck-rust-setup)

;emacs-racer setup
(add-hook 'rust-mode-hook #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)

(add-hook 'racer-mode-hook #'company-mode)

(require 'rust-mode)
(define-key rust-mode-map (kbd "C-<f12>") #'company-indent-or-complete-common)
(setq company-tooltip-align-annotations t)

;(unless (getenv "RUST_SRC_PATH")
;  (setenv "RUST_SRC_PATH" (expand-file-name "~/path/to/rust/src")))

;company color settings
(custom-set-faces
 '(company-preview
   ((t (:foreground "darkgray" :underline t))))
 '(company-preview-common
   ((t (:inherit company-preview))))
 '(company-tooltip
   ((t (:background "lightgray" :foreground "black"))))
 '(company-tooltip-selection
   ((t (:background "steelblue" :foreground "white"))))
 '(company-tooltip-common
   ((((type x)) (:inherit company-tooltip :weight bold))
    (t (:inherit company-tooltip))))
 '(company-tooltip-common-selection
   ((((type x)) (:inherit company-tooltip-selection :weight bold))
    (t (:inherit company-tooltip-selection)))))

;autopair
(require 'autopair)
(autopair-global-mode 1)

;show-paren
(show-paren-mode 1)
(setq show-paren-delay 0)

;auto indent 2
(setq-default c-basic-offset 2)

;shortcut settings
(global-set-key (kbd "TAB") 'company-complete)
(global-set-key (kbd "<f12> c") 'company-c-headers)
(global-set-key (kbd "<f12> l") 'linum-mode)


