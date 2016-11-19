;;加载主题
(load-theme 'solarized-dark t)
;;全屏设置
(set-frame-position (selected-frame) 0 0)
(setq default-frame-alist '((height . 49) (width . 178) (menu-bar-lines . 0) (tool-bar-lines . 0))) 
;;(setq initial-frame-alist (quote ((fullscreen . maximized))))
;;设置字体
(set-default-font "Source Code Pro 14")
;;关闭工具栏
(tool-bar-mode -1)
;;光标形状
(setq-default cursor-type 'bar)
;;关闭滚动栏
(scroll-bar-mode -1)
;;显示行号
(global-linum-mode t)
;;关闭启动画面
(setq inhibit-splash-screen t)
;;匹配括号
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;;显示当前行
(global-hl-line-mode t)
;;不产生备份文件与不自动保存
(setq make-backup-files nil)
(setq auto-save-default nil)
;;补全括号
(electric-pair-mode 1)
;;关闭提示音
(setq ring-bell-function 'ignore)
;;替换选中的内容，不再是追加
(delete-selection-mode t)
;;语法高亮
(global-font-lock-mode t)
;;自动补全
(global-company-mode t)

(provide 'basis-ui)
