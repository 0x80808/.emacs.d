;; go-mode引入
(require 'go-mode)
;;配置gopath
(setenv "GOPATH" (concat ""
			 "/Users/lvc/Documents/lvcgo:"
			 "/Users/lvc/Documents/go:"
			 ))
;;加载go bin路径
(add-to-list 'exec-path (expand-file-name "/usr/local/go/bin"))
(add-to-list 'exec-path (expand-file-name "/Users/lvc/Documents/lvcgo/bin"))
;;golang其他配置
(defun my-go-mode-hook()
  (setq gofmt-command "goimports")
  ;;去除多余的联想
  (setq ac-sources '(ac-source-go ac-source-abbrev ac-source-dictionary))
  ;;Go oracle
  ;;(load-file "~/Documents/lvcgo/src/golang.org/x/tools/cmd/oracle/oracle.el")
  ;;函数跳转
  (local-set-key (kbd "M-d") 'godef-jump)
  ;;新窗口跳转函数
  (local-set-key (kbd "M-4") 'godef-jump-other-window)
  ;;函数回跳
  (local-set-key (kbd "M-2") 'pop-tag-mark))
;;加载my-go-mode-hook函数
(add-hook 'go-mode-hook 'my-go-mode-hook)
;;退出格式化
(add-hook 'before-save-hook 'gofmt-before-save)
;;go-mode执行之后加载的方案
(with-eval-after-load 'go-mode
  ;;自动补全
  (require 'go-autocomplete)
  (add-hook 'go-mode-hook 'auto-complete-mode)
  ;;去除多余的联想
  (add-hook 'go-mode-hook #' (lambda() (setq ac-sources '(ac-source-go ac-source-abbrev ac-source-dictionary)))))
;;golang语法检测
(add-hook 'go-mode-hook 'flycheck-mode)
;; (eval-after-load "go-mode"
;;   '(progn
;;      (flycheck-declare-checker go-gofmt
;;        "A Go syntax and style checker using the gofmt utility."
;;        :command '("gofmt" source-inplace)
;;        :error-patterns '(("^\\(?1:.*\\):\\(?2:[0-9]+\\):\\(?3:[0-9]+\\): \\(?4:.*\\)$" error))
;;        :modes 'go-mode)
;;      (add-to-list 'flycheck-checkers 'go-gofmt)))




(provide 'basis-go)
;;; basis-go.el ends here
