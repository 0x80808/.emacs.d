;;加载php配置
(require 'php-mode)
;;注释
(defun php-signature ()
  (interactive)
  (insert "/**\n* @param")
  (insert "\n* @return")
  (insert "\n*/")
  (indent-buffer))
;;
(add-hook 'php-mode-hook
	  '(lambda ()
	     (require 'ac-php)
	     (setq ac-sources  '(ac-source-php))
	     ;;缩进
	     (setq c-basic-offset 4)
	     ;;关闭对html的支持
	     (setq indent-tabs-mode nil)
	     (setq php-template-compatibility nil)
	     (local-set-key (kbd "<f4>") 'php-signature)
	     ;; (yas-global-mode 1)
	     ;; ;;goto define
	     ;; (define-key php-mode-map  (kbd "M-d") 'ac-php-find-symbol-at-point)
	     ;; ;;go back
	     ;; (define-key php-mode-map  (kbd "M-*") 'ac-php-location-stack-back)
	     ))
;;语法检测
(require 'flymake-php)
(add-hook 'php-mode-hook 'flymake-php-load)
(add-hook 'web-mode-hook 'flymake-php-load)
;;自动补全
(add-hook 'php-mode-hook 'auto-complete-mode)
(add-hook 'web-mode-hook 'auto-complete-mode)

;;启用web-mode时的配置
(defun bs-web-mode-hook ()
  (require 'ac-php)
  (setq ac-sources  '(ac-source-php))
  (local-set-key '[backtab] 'indent-relative)
  (setq indent-tabs-mode nil)
  (setq web-mode-markup-indent-offset 2
        web-mode-css-indent-offset 2
        web-mode-code-indent-offset 4))
(add-hook 'web-mode-hook 'bs-web-mode-hook)





(provide 'basis-php)
