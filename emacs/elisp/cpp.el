(require 'company-c-headers)
(add-to-list 'company-c-headers-path-system "/usr/include/c++/8/")
(add-to-list 'company-c-headers-path-system "/usr/include/x86_64-linux-gnu/")
(add-to-list 'company-c-headers-path-system "/usr/include/x86_64-linux-gnu/c++/8")
(setq-default c-basic-offset 2)
(add-hook 'c++-mode-hook
          (lambda () (setq c-basic-offset 2)))
(add-hook 'c++-mode-hook
          (lambda () (local-set-key (kbd "TAB") 'company-complete)))
