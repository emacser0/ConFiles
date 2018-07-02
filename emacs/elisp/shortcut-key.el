;shortcut settings                                                                                                                                                             
(global-set-key (kbd "TAB") 'company-complete)

(global-set-key (kbd "<f2>") 'company-c-headers)



(global-set-key (kbd "<next>")
		(lambda () (interactive) (previous-line 5)))

(global-set-key (kbd "<end>")
		(lambda () (interactive) (next-line 5)))

(global-set-key (kbd "<home>") 'undo)

(global-set-key (kbd "<prior>") 'undo-tree-redo)

(global-set-key (kbd "<f12>") 'goto-line)

(global-set-key (kbd "<next>") 'point-to-register)

(global-set-key (kbd "<end>") 'jump-to-register)


;
;(global-set-key (kbd "C-w") '(previous-line &optional ARG TRY-VSCROLL))

;(global-set-key (kbd "C-a") '(backward-char &optional N))

;(global-set-key (kbd "C-s") '(next-line &optional ARG TRY-VSCROLL))

;(global-set-key (kbd "C-d") '(forward-char &optional N))

;(global-set-key (kbd "C-f") '(isearch-forward &optional REGEXP-P NO-RECURSIVE-EDIT))
		  
;(global-set-key (kbd "C-b") '(move-beginning-of-line ARG))

;(global-set-key (kbd "C-p") '(kill-region BEG END &optional REGION))

;(global-set-key (kbd "C-n") '(delete-char N &optional KILLFLAG))





