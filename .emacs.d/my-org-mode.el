;;------------��������------------------



;;------------�������ý���--------------


;;------------ϲ������------------------



;;------------ϲ�����ý���--------------

;;�Զ�����
;;(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil))) 
;;(setq truncate-lines nil)

;;------------�����������------------------

;;������������������
;; Setting English Font
(set-face-attribute
'default nil :font "Consolas 11")
;; Chinese Font
(dolist (charset '(kana han symbol cjk-misc bopomofo))
(set-fontset-font (frame-parameter nil 'font)
charset
(font-spec :family "Microsoft Yahei" :size 20)))

;;------------����������ý���-------------
