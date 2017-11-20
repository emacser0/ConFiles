;shortcut settings                                                                                                                                                             
(global-set-key (kbd "TAB") 'company-complete)
(global-set-key (kbd "C-TAB") 'company-c-headers)



(global-set-key (kbd "<next>")
		(lambda () (interactive) (previous-line 5)))

(global-set-key (kbd "<end>")
		(lambda () (interactive) (next-line 5)))

(global-set-key (kbd "<home>")
		(lambda () (interactive) (backward-word)))

(global-set-key (kbd "<prior>")
		(lambda () (interactive) (forward-word)))

(global-set-key (kbd "<f12>") 'goto-line)
