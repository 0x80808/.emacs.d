;;导航树快捷键
(global-set-key [f2] 'neotree-toggle)
;;swiper查询快捷键
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
;;缩进
(global-set-key (kbd "C-\\") 'indent-region-or-buffer)
;;hippie-expand补全(修复自动补全的一些应用)
(global-set-key (kbd "s-.") 'hippie-expand)
;;注释与反注释
(global-set-key (kbd "s-/") 'my-comment-or-uncomment-region)
;;occur抓取搜索词
(global-set-key (kbd "M-s o") 'occur-dwin)
;;获取当前窗口函数
(global-set-key (kbd "M-s i") 'counsel-imenu)
;;MarkSet命令,编辑模式中选择你要选中的内容
(global-unset-key (kbd "C-SPC"))
(global-set-key (kbd "M-m") 'set-mark-command)
;;区域选中（同上） c + - + = 可以缩小选中的区域
(global-set-key (kbd "C-=") 'er/expand-region)
;;ag代码搜索
(global-set-key (kbd "M-s a") 'helm-do-ag-project-root)
;;手动开启company-mode自动补全
(global-set-key (quote [C-tab]) 'company-mode)
;; 撤销
(global-unset-key (kbd "s-z"))
(global-set-key (kbd "s-z") 'undo)
;; 重做
(global-unset-key (kbd "s-y"))
(global-set-key (kbd "s-y") 'redo)
;;复制当前行到下一行
(global-set-key (kbd "M-p") 'djcb-duplicate-line)


(provide 'basis-key)
