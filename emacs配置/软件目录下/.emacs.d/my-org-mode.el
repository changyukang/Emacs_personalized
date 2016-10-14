;;------------基本设置------------------



;;------------基本设置结束--------------


;;------------喜好设置------------------



;;------------喜好设置结束--------------

;;自动换行
;;(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil))) 
;;(setq truncate-lines nil)

;;------------表格字体设置------------------

;;中文与外文字体设置
;; Setting English Font
(set-face-attribute
'default nil :font "Consolas 11")
;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
(set-fontset-font (frame-parameter nil 'font)
charset
(font-spec :family "Microsoft Yahei" :size 20)))

;;------------表格字体设置结束-------------
