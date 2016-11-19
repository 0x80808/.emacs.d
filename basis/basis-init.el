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


(provide 'basis-init)
