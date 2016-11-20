;;导航树快捷键
(global-set-key [f2] 'neotree-toggle)
;;swiper查询快捷键
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "M-x") 'counsel-M-x)
;;缩进
(global-set-key (kbd "C-\\") 'indent-region-or-buffer)
;;hippie-expand补全
(global-set-key (kbd "s-/") 'hippie-expand)


(provide 'basis-key)
