;; C语言

(defun my-c-mode-hook()
  (c-set-style "k&r")
  (setq c-basic-offset 4)
  (setq tab-width 4)
  (setq indent-tabs-mode nil)
  (c-toggle-hungry-state 1)
  ;; (set-default 'truncate-lines t)       ; 自动断行
  (define-key c-mode-base-map [(f7)] 'compile) ; 编译快捷键
  (define-key c-mode-base-map [(f4)] 'next-error)) ; 查找编译错误，下一个编译错误

;; 建议不要使用c-toggle-auto-hungry-state，
;; 因为这个设置会把c-toggle-hungry-state和c-toggle-auto-newline选项都打开，
;; 后者会在每个行结束时自动添加换行符，十分讨厌的

(add-hook 'c-mode-hook 'my-c-mode-hook)
