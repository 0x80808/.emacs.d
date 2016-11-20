;;加载php配置
;;(eval-after-load 'php-mode
;;  '(require 'php-ext))
(unless (package-installed-p 'ac-php )
    (package-refresh-contents)
    (package-install 'ac-php )
    )
  (with-no-warnings (require 'cl))
  (require 'php-mode)
  (add-hook 'php-mode-hook
            '(lambda ()
               (auto-complete-mode t)
               (require 'ac-php)
               (setq ac-sources  '(ac-source-php ) )
               (yas-global-mode 1)
               (define-key php-mode-map  (kbd "M-d") 'ac-php-find-symbol-at-point)   ;goto define
               (define-key php-mode-map  (kbd "M-*") 'ac-php-location-stack-back   ) ;go back
               ))

(require 'flymake-php)
(add-hook 'php-mode-hook 'flymake-php-load)

(provide 'basis-php)
