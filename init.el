;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
;;加载配置
(add-to-list 'load-path "~/.emacs.d/basis/")
(require 'basis-path)
(require 'basis-ui)
(require 'basis-init)
(require 'basis-fun)
(require 'basis-key)
(require 'basis-go)
(require 'basis-php)
(require 'basis-evil)
(require 'basis-nasm)
(require 'basis-c)
;;emacs自动生成
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-idle-delay 0.08)
 '(company-minimum-prefix-length 1)
 '(ecb-options-version "2.50")
 '(package-selected-packages
   (quote
    (helm-gtags helm ggtags doom-themes color-theme-sanityinc-tomorrow window-numbering sr-speedbar tabbar ecb redo+ maxframe evil-leader evil flycheck helm-ag iedit expand-region web-mode js2-mode counsel popwin exec-path-from-shell nasm-mode swiper solarized-theme neotree hungry-delete go-mode go-autocomplete flymake-php company ac-php)))
 '(popwin:popup-window-position (quote right))
 '(popwin:popup-window-width 50)
 '(tabbar-mwheel-mode nil nil (tabbar))
 '(tabbar-separator (quote (0.2))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(tabbar-button ((t nil)))
 '(tabbar-button-highlight ((t (:inherit tabbar-default))))
 '(tabbar-default ((t (:foreground "dark gray" :height 1))))
 '(tabbar-highlight ((t (:underline t))))
 '(tabbar-modified ((t (:foreground "green" :box 1))))
 '(tabbar-selected ((t (:foreground "Orange" :box (:line-width 1 :color "Orange" :style released-button)))))
 '(tabbar-selected-modified ((t (:foreground "red" :box 1))))
 '(tabbar-unselected ((t (:inherit tabbar-default :box (:line-width 1 :color "black" :style released-button))))))

