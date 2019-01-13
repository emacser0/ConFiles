(add-hook 'haskell-mode-hook
          (lambda () (local-set-key (kbd "TAB") 'company-ghc)))
