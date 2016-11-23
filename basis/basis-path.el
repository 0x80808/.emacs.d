;;基础配置,加载melpa的pkg
(when (>= emacs-major-version 24)
  ;; (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  (setq package-archives '(("gnu"   . "http://elpa.zilongshanren.com/gnu/")
                          ("melpa" . "http://elpa.zilongshanren.com/melpa/")))
 )
;;读取path路径
(defun set-exec-path-from-shell-PATH ()
  (let ((path-from-shell (replace-regexp-in-string
                          "[ \t\n]*$"
                          ""
                          (shell-command-to-string "$SHELL --login -i -c 'echo $PATH'"))))
    (setenv "PATH" path-from-shell)
    (setq eshell-path-env path-from-shell) ; for eshell users
    (setq exec-path (split-string path-from-shell path-separator))))
(when window-system (set-exec-path-from-shell-PATH))

(provide 'basis-path)

