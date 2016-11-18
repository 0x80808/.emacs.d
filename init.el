;;基础配置,加载melpa的pkg
(when (>= emacs-major-version 24)
  (require 'package)
  ;;(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  (setq package-archives '(("gnu"   . "http://elpa.zilongshanren.com/gnu/")
                         ("melpa" . "http://elpa.zilongshanren.com/melpa/")))
  (package-initialize))
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

;;设置 my-dot-path 的路径
(setq root-dot-path "~/.emacs.d/")
;;加载基础配置
(setq init-site-el-path (concat root-dot-path "basis/"))
(add-to-list 'load-path init-site-el-path)
(load "el-init.el")
;;加载go配置
(setq go-site-el-path (concat root-dot-path "go/"))
(add-to-list 'load-path go-site-el-path)
(load "go-init.el")
;;加载php配置
(setq go-site-el-path (concat root-dot-path "php/"))
(add-to-list 'load-path go-site-el-path)
(load "php-init.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.08)
 '(company-minimum-prefix-length 1)
 '(package-selected-packages
   (quote
    (counsel popwin exec-path-from-shell nasm-mode swiper solarized-theme neotree hungry-delete go-mode go-autocomplete flymake-php company ac-php))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
