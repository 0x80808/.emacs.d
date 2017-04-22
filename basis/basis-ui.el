;;加载主题
;; (load-theme 'solarized-dark t)
;; (load-theme 'sanityinc-tomorrow-night t)
(load-theme 'doom-one t)
;;全屏设置
;; (require 'maxframe)
;; (add-hook 'window-setup-hook 'maximize-frame t)
(set-frame-position (selected-frame) 0 0);;离屏幕主上角像素
(setq default-frame-alist '((width . 178) (height . 50)))
;; (set-frame-parameter nil 'fullscreen 'fullboth) 
;;设置字体
(set-frame-font "Source Code Pro 14")
;;关闭工具栏
(tool-bar-mode -1)
;;光标形状
(setq-default cursor-type 'bar)
;;关闭滚动栏
(scroll-bar-mode -1)
;;显示行号
(global-linum-mode t)
(setq linum-format "%4d")
;;列
(setq column-number-mode t)
;;关闭启动画面
(setq inhibit-splash-screen t)
;;匹配括号
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;;显示当前行
(global-hl-line-mode t)
;;关闭提示音
(setq ring-bell-function 'ignore)
;;导航栏配置
(require 'tabbar)
(tabbar-mode)
(global-set-key (kbd "<M-up>") 'tabbar-backward-group)
(global-set-key (kbd "<M-down>") 'tabbar-forward-group)
(global-set-key (kbd "<M-left>") 'tabbar-backward)
(global-set-key (kbd "<M-right>") 'tabbar-forward)
 (defun my-tabbar-buffer-groups () ;; customize to show all normal files in one group
   "Returns the name of the tab group names the current buffer belongs to.
 There are two groups: Emacs buffers (those whose name starts with '*', plus
 dired buffers), and the rest.  This works at least with Emacs v24.2 using
 tabbar.el v1.7."
   (list (cond ((string-equal "*" (substring (buffer-name) 0 1)) "emacs")
               ((eq major-mode 'dired-mode) "emacs")
               (t "user"))))
 (setq tabbar-buffer-groups-function 'my-tabbar-buffer-groups)

(provide 'basis-ui)
