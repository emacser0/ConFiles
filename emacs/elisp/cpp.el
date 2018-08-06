(require 'company-c-headers)
(add-hook 'c++-mode-hook
          (lambda () (setq flycheck-clang-language-standard "c++11")))
(add-to-list 'company-c-headers-path-system "/usr/include/c++/5.4.0/")
(add-to-list 'company-c-headers-path-system "/usr/include/x86_64-linux-gnu/c++/5.4.0/")




