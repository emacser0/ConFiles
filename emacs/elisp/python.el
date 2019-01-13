(add-hook 'python-mode-hook
          (lambda () (local-set-key (kbd "TAB") 'company-jedi)))
