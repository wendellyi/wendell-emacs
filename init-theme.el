;; x-window用户下面两行需要启用
(require 'color-theme)
(color-theme-initialize)

;; 下面的配色方案任选其一
;;(color-theme-taming-mr-arneson)
;;(color-theme-pok-wog)
;;(color-theme-subtle-hacker)
;;(color-theme-sitaramv-solaris)
;;(color-theme-shaman)
;;(color-theme-ryerson)
;;(color-theme-robin-hood)
;;(color-theme-gnome2)
;;(color-theme-deep-blue)
(color-theme-classic)                 ;; x-window的用户可以使用这个主题
;;(color-theme-bharadwaj-slate)

;; 系统装需要安装monaco字体
(set-default-font "Monaco-11")

;;如果不带x-window的用建议不许要使用主题，终端上的主题我个人认为已经满足了
