(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))


(defun load-directory (dir)
  (let ((load-it (lambda (f)
		   (load-file (concat (file-name-as-directory dir) f)))
		 ))
    (mapc load-it (directory-files dir nil "\\.el$"))))

(load-directory "~/Git/configfile/emacs")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(company-go-gocode-command "/home/ernesti/Git/go/bin/gocode")
 '(custom-enabled-themes (quote (wheatgrass)))
 '(package-selected-packages
   (quote
    (clojure-mode clojure-snippets cmake-mode cmake-ide cpputils-cmake company-tern flycheck-ocaml flycheck-elixir flycheck flycheck-gometalinter flycheck-julia flycheck-ycmd flymake-css flymake-yaml flymake-rust flymake-perlcritic flymake-lua flymake-jshint flymake-coffee flymake-json flymake-jslint company-ycmd company-lua company-dcd xref-js2 js-import js2-refactor julia-mode json-mode jsfmt js2-mode d-mode company-rtags company-sourcekit swift3-mode swift-mode flycheck-d-unittest flycheck-css-colorguard flymake-cppcheck flycheck-rtags flycheck-swift3 flycheck-swift ensime jdee company-emacs-eclim jtags java-imports nim-mode flycheck-nimsuggest exec-path-from-shell plsense company-plsense company-web company-shell company-cabal company company-go flymake-go flycheck-objc-clang flycheck-nim go-mode sbt-mode rust-mode flycheck-yamllint flycheck-perl6 flycheck-kotlin flycheck-ghcmod flycheck-clojure perl6-mode ant android-mode kotlin-mode groovy-mode ceylon-mode yasnippet virtualenv undo-tree smart-cursor-color scala-mode racer paredit irony-eldoc flycheck-stack flycheck-rust flycheck-pyflakes flycheck-pycheckers flycheck-package flycheck-irony flycheck-haskell flycheck-clangcheck flycheck-clang-tidy flycheck-clang-analyzer company-racer company-jedi company-irony-c-headers company-irony company-ghci company-ghc company-c-headers compact-docstrings autopair auto-complete-clang auto-complete-c-headers ac-c-headers))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-preview ((t (:foreground "darkgray" :underline t))))
 '(company-preview-common ((t (:inherit company-preview))))
 '(company-tooltip ((t (:background "lightgray" :foreground "black"))))
 '(company-tooltip-common ((((type x)) (:inherit company-tooltip :weight bold)) (t (:inherit company-tooltip))))
 '(company-tooltip-common-selection ((((type x)) (:inherit company-tooltip-selection :weight bold)) (t (:inherit company-tooltip-selection))))
 '(company-tooltip-selection ((t (:background "steelblue" :foreground "white")))))
