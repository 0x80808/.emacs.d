;; go-mode引入
(require 'go-mode)
(load "go-mode-autoloads.el")
;;配置gopath
(setenv "GOPATH" (concat ""
			 "/Users/lvc/Documents/lvcgo:"
			 "/Users/lvc/Documents/go:"
			 ))
;;加载go bin路径
;;(add-to-list 'exec-path "~/Documents/lvcgo/bin")
(add-to-list 'exec-path (expand-file-name "/usr/local/go/bin"))
(add-to-list 'exec-path (expand-file-name "/Users/lvc/Documents/lvcgo/bin"))
;;golang其他配置
(defun my-go-mode-hook ()
  ;;退出格式化
  (add-hook 'before-save-hook 'gofmt-before-save)
  ;;加载包
  (setq gofmt-command "goimports")
  ;;Go oracle
  (load-file "~/Documents/lvcgo/src/golang.org/x/tools/cmd/oracle/oracle.el")
  ;;函数跳转
  (local-set-key (kbd "M-d") 'godef-jump)
  ;;函数回跳
  (local-set-key (kbd "M-2") 'pop-tag-mark))
(add-hook 'go-mode-hook 'my-go-mode-hook)
;;go自动补齐
(with-eval-after-load 'go-mode (require 'go-autocomplete))
(defun auto-complete-for-go () (auto-complete-mode 1))
(add-hook 'go-mode-hook 'auto-complete-for-go)
;;去除多余的联想
(add-hook 'go-mode-hook #' (lambda() (setq ac-sources '(ac-source-go ac-source-abbrev ac-source-dictionary))))

(provide 'basis-go)
