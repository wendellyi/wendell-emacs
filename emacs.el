;; 全局初始化脚本

;; 加载配置文件路径
(add-to-list 'load-path "~/.emacs.d")

;; 加载各个子功能
(load "init-base.el")                   ; 基本设置
;; (load "init-theme.el")                  ; 主题设置，命令行可以注释掉
(load "init-kbd.el")                    ; 全局键位绑定
(load "init-language.el")               ; 编程语言相关设定
(load "init-auto-complete.el")          ; 自动补全

