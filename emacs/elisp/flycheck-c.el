(global-flycheck-mode 1)

; Disable clang check, gcc check works better
(setq-default flycheck-disabled-checkers
	      (append flycheck-disabled-checkers
		      '(c/c++-clang)))

; Enable C++11 support for gcc
(add-hook 'c++-mode-hook (lambda () (setq flycheck-gcc-language-standard "c++11")))
