;configurate flycheck-irony                                                     
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

(global-flycheck-mode 1)

