;;加载php配置
;; (with-no-warnings (require 'cl))
(require 'php-mode)
(add-hook 'php-mode-hook
	  '(lambda ()
	     (auto-complete-mode t)
	     (require 'ac-php)
	     (setq ac-sources  '(ac-source-php))
	     ;; (yas-global-mode 1)
	     ;;goto define
	     (define-key php-mode-map  (kbd "M-d") 'ac-php-find-symbol-at-point)
	     ;;go back
	     (define-key php-mode-map  (kbd "M-*") 'ac-php-location-stack-back)
	     ))

(require 'flymake-php)
(add-hook 'php-mode-hook 'flymake-php-load)

(provide 'basis-php)
