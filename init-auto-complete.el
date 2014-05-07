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
;; (define-key ac-mode-map  (kbd "M-/") 'auto-complete)
;; (ac-set-trigger-key "<M-/>")
(ac-set-trigger-key "TAB")
;; (define-key ac-mode-map  (kbd "M-/") 'auto-complete)

;; 使用退格时也触发auto-complete
(setq ac-trigger-commands (cons 'backward-delete-char-untabify ac-trigger-commands))

;; 模糊补全开启
(setq ac-fuzzy-enable t)

;; clang补全配置
(require 'auto-complete-clang)
(setq ac-clang-auto-save t)
(setq ac-auto-start t)
(setq ac-quick-help-delay 0.5)
;; (ac-set-trigger-key "TAB")
;; (define-key ac-mode-map  [(control tab)] 'auto-complete)

(defun my-ac-config ()
  (setq ac-clang-flags
        (mapcar(lambda (item)(concat "-I" item))
               (split-string
                                                         "
 /usr/lib/gcc/x86_64-redhat-linux/4.4.7/../../../../include/c++/4.4.7
 /usr/lib/gcc/x86_64-redhat-linux/4.4.7/../../../../include/c++/4.4.7/x86_64-redhat-linux
 /usr/lib/gcc/x86_64-redhat-linux/4.4.7/../../../../include/c++/4.4.7/backward
 /usr/local/include
 /usr/lib/gcc/x86_64-redhat-linux/4.4.7/include
 /usr/include
 /home/yiweijun/root/include
 ./
")))
  ;; 注意路径是通过下面的命令得到的
  ;; echo "" | g++ -v -x c++ -E -
  (setq-default ac-sources '(ac-source-abbrev ac-source-dictionary ac-source-words-in-same-mode-buffers))
  (add-hook 'emacs-lisp-mode-hook 'ac-emacs-lisp-mode-setup)
  ;; (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'ruby-mode-hook 'ac-ruby-mode-setup)
  (add-hook 'css-mode-hook 'ac-css-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(defun my-ac-cc-mode-setup ()
  (setq ac-sources (append '(ac-source-clang ac-source-yasnippet) ac-sources)))
(add-hook 'c-mode-common-hook 'my-ac-cc-mode-setup)

(my-ac-config)
