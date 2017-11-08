(require 'python)
(defun python-shell-parse-command ()
  "Return the string used to execute the inferior Python process."
  "/usr/bin/python3 -i"
  )

(setq python-shell-interpreter "ipython3")
