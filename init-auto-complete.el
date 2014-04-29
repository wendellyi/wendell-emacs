;; 首先进入auto-complete源文件顶级目录，运行下面的命令
;; make byte-compile
;; 如果实在windows下
;; 在源代码的顶级目录下打开emacs，使用下面的命令
;; C-x b *.el RET B
;; 也就是使用emacs进行字节码编译

;; 添加auto-complete的路径
(add-to-list 'load-path "~/.emacs.d/site-lisp/auto-complete")

;; 添加字典路径
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/site-lisp/auto-complete/dict")
(ac-config-default)

;; 开启popup菜单
(require 'popup)
(setq ac-quick-help-prefer-pos-tip t)

;; quik help配置，以及延迟
(setq ac-use-quick-help t)
(setq ac-quick-help-delay 0.7)

;; tab键配置
(setq ac-dwim t)

;; 自动补全默认关闭，使用tab键触发
;(setq ac-auto-start t)
(setq ac-auto-start nil)
;(define-key ac-mode-map  (kbd "M-/") 'auto-complete)
;(ac-set-trigger-key "<M-/>")
(ac-set-trigger-key "TAB")

;; 使用退格时也触发auto-complete
(setq ac-trigger-commands (cons 'backward-delete-char-untabify ac-trigger-commands))

;; 模糊补全开启
(setq ac-fuzzy-enable t)

