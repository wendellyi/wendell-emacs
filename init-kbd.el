;; 全局键绑定

;; 行定位快捷键
(global-set-key (kbd "<f5>") 'goto-line)

;; 全局换行自动进缩
(global-set-key (kbd "RET") 'newline-and-indent)

;; 列出所有书签
(global-set-key [(f9)] 'list-bookmarks)

;; 设置书签
(global-set-key [(f10)] 'bookmark-set)
