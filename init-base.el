;; 基本设置

;; 禁用启动画面
(setq inhibit-startup-message t)

;; 设置窗口启动时的大小
(setq default-frame-alist
      '((height . 25) (width . 80)))

;; 对界面的一些设置
(custom-set-variables
 '(show-paren-mode t)       ;; 显示括号匹配
 '(menu-bar-mode nil)       ;; 禁用菜单栏
 '(scroll-bar-mode nil)     ;; 禁用滚动条
 '(tool-bar-mode nil))      ;; 禁用工具栏
 
;; 显示行列号
(setq column-number-mode t)
(global-linum-mode 1)
(setq linum-format "%04d|")

;; 显示时间
(display-time-mode 1) 
(setq display-time-24hr-format t) 
(setq display-time-day-and-date t)
 
;; 括号匹配，只高亮，不跳动
(show-paren-mode t)
(setq show-paren-style 'parentheses)

;; 默认显示 80列就换行
(setq default-fill-column 80)

;; 使用y或n代替yes或no
(fset 'yes-or-no-p 'y-or-n-p)

;; 设置默认模式
(setq-default major-mode 'text-mode)

;; 使用空格代替tab键
(setq-default indent-tabs-mode nil)

;; 设置tab stop列号
(let ((x 40))
  (setq tab-stop-list ())
   (while (>= x 0)
     (setq tab-stop-list (cons (* x 4) tab-stop-list))
     (setq x (1- x))))

;; 标题栏显示缓冲区名称
(setq frame-title-format "emacs@%b")

;; 自动保存时间为3分钟
(setq auto-save-interval 180)

;; 浏览时平滑滚动，而不是跳动
(setq scroll-margin 4
      scroll-conservatively 10000)
