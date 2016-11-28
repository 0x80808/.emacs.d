;;neotree导航树
(require 'neotree)
;;饥饿删除
(require 'hungry-delete)
(global-hungry-delete-mode)
;;避免dired问些多余的问题
(put 'dired-find-alternate-file 'disabled nil)
;;搜索改善
(require 'swiper)
;;c+f v等查询时弹出小窗口
(require 'popwin)
(popwin-mode t)
;;不产生备份文件与不自动保存
(setq make-backup-files nil)
(setq auto-save-default nil)
;;补全括号
(electric-pair-mode 1)
;;替换选中的内容，不再是追加
(delete-selection-mode t)
;;语法高亮
(global-font-lock-mode t)
;;手动打开自动补全 M+x company-mode
(autoload 'company-mode "company" nil t)
;;yes与no的别名
(fset 'yes-or-no-p 'y-or-n-p)
;;iedit
(require 'iedit)
;;emacs-lisp-mode模式下自动开启补全模式
(add-hook 'emacs-lisp-mode-hook 'company-mode)

(provide 'basis-init)
