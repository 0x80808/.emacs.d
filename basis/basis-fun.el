;;缩进自定义函数
(defun indent-buffer()
  (interactive)
  (indent-region (point-min) (point-max)))
(defun indent-region-or-buffer()
  (interactive)
  (save-excursion
    (if (region-active-p)
	(progn
	  (indent-region (region-beginning) (region-end))
	  (message "Indent selected region."))
      (progn
	(indent-buffer)
	(message "Indent buffer")))))
;;hippie expand功能函数
(setq hippie-expand-try-functions-list '(
					 try-expand-dabbrev
					 try-expand-dabbrev-all-buffers
					 try-expand-dabbrev-from-kill
					 try-complete-file-name-partially
					 try-complete-file-name
					 try-expand-all-abbrevs
					 try-expand-list
					 try-expand-line
					 try-complete-lisp-symbol-partially
					 try-complete-lisp-symbol))


(provide 'basis-fun)
