;;�ı�Ĭ��·��
(setenv "HOME" "D:/emacs-24.3")
(setenv "PATH" "D:/emacs-24.3")
;;set the default file path
;;(setq default-directory "~/")
;;���ô��ļ���ȱʡ·��
(setq default-directory "~/")


;;����ʱȫ��
;;����һ
;; ------------------------------------------------------------------- 
;; �ָ����� �� ������� ������ 
;; ------------------------------------------------------------------- 
;; (defun w32-restore-frame () 
;;   "Restore a minimized frame." 
;;   (interactive) 
;;   (w32-send-sys-command 61728)) 
  
;;(defun w32-maximize-frame () 
;;   "Maximize the current frame." 
;;   (interactive) 
;;   (w32-send-sys-command 61488)) 
  
;; ------------------------------------------------------------------- 
;; ��������� 
;; ------------------------------------------------------------------- 
;; (w32-restore-frame) 
;;(w32-maximize-frame) 

;;������
;;���ô���λ��Ϊ�������Ͻ�(0,0) 
;;(set-frame-position (selected-frame) 0 0) 
;;���ÿ�͸�,�ҵ�ʮ��С����110,33,��ҿ��Ե��������������Ӧ�Լ���Ļ��С 
;;(set-frame-width (selected-frame) 134) 
;;(set-frame-height (selected-frame) 32)

;;����ȫ����ݼ�
;;(require 'darkroom-mode)
;;(global-set-key [f11] 'fullscreen)


;;�������Զ������ϴιر�ʱ�Ļ�����
(desktop-save-mode 1)


;;�����ļ���ConFile���Ѳ�����ӽ�ȥ������˵display-line-number.el��.emacs��д������Ĵ��롣
;;��ʾ�к�
;;(load-file "~/ConFile/display-line-number.el")
;;(require 'display-line-number)
;;(global-display-line-number-mode t)

(setq visible-bell t)
;;�رշ��˵ĳ���ʱ����ʾ��
;;(setq inhibit-startup-message t)
;;�ر�emacs����ʱ�Ļ���
(setq gnus-inhibit-startup-message t)
;;�ر�gnus����ʱ�Ļ���,windows��ò��û��


;;��ʾ�кŻ���m-x  global-linum-mode�س�(m-x����Alt+x)
(global-linum-mode t)

(setq global-linum-mode t);�к�
(setq column-number-mode t)
(setq line-number-mode t);;��ʾ���к�

(setq case-fold-search nil);;���ҵ�ʱ���ǿ��ƥ���Сдt,nil
(setq case-replace  nil);;ǿ�ƴ�Сд�Զ��滻

(set-scroll-bar-mode nil);;ȡ��������
;;(tool-bar-mode nil);;ȡ��������
(tool-bar-mode -1)

;; ����emacs���ڵ�λ�úʹ�С 
;; �ô������ 
;;(require 'maxframe) 
;;(add-hook 'window-setup-hook 'maximize-frame t)
 

(fset 'yes-or-no-p 'y-or-n-p);; �ı� Emacs ��ִ��Ҫ��ش� yes ����Ϊ���� y ��ո����ʾ yes��n ��ʾ no


;;����ȱʡ��ģʽ��text��,������auto-fill��ģʽ.�����ǻ���ģʽfundamental-mode
(setq major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

(setq mouse-avoidance-mode 'animate)
;;��꿿�����ָ��ʱ�������ָ���Զ��ÿ�����ס���ߡ�

(setq frame-title-format "emacs@%b")
;;�ڱ�������ʾbuffer�����֣������� emacs@wangyin.com ����û�õ���ʾ��

(setq auto-image-file-mode t)
;;�� Emacs ����ֱ�Ӵ򿪺���ʾͼƬ��

(auto-compression-mode 1)
;��ѹ���ļ�ʱ�Զ���ѹ����

(setq global-font-lock-mode t)
;;�����﷨������

(add-hook 'comint-output-filter-functions
'comint-watch-for-password-prompt)
;;������shell��telnet��w3m��ģʽ��ʱ����Ȼ������Ҫ������������,��ʱ�����Գ��������

(setq require-final-newline t)
;; �Զ������ļ�ĩ����һ����

(setq track-eol t)
;; ���������β�����ƶ���ʱ��ʼ�ձ�������β��

(setq Man-notify-method 'pushy)
;; ����� man page ʱ��ֱ����ת�� man buffer��


;;(global-set-key [home] 'beginning-of-buffer)
;;(global-set-key [end] 'end-of-buffer)
;;����home��ָ��buffer��ͷ��end��ָ��buffer��β

(setq sentence-end "\\([������]\\|����\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)
;;���� sentence-end ����ʶ�����ı�㡣������ fill ʱ�ھ�ź���������ո�

(setq-default indent-tabs-mode nil)
(setq c-basic-offset 4)
(setq tab-width 4)
(setq tab-stop-list ())
;;���� TAB �ַ���indent, �������ܶ���ֵĴ��󡣱༭ Makefile ��ʱ��Ҳ���õ��ģ���Ϊ makefile-mode ��� TAB �����ó������� TAB �ַ������Ҽ�����ʾ�ġ�

(setq-default auto-fill-function 'do-auto-fill)
; Autofill in all modes;;
(setq fill-column 60)
;;�� fill-column ��Ϊ 60. ���������ָ��ö�

(setq kill-ring-max 200)
;;����ճ��������Ŀ����.��һ���ܴ��kill ring(���ļ�¼����). ������ֹ�Ҳ�С��ɾ����Ҫ�Ķ���

;; ������ʾѡ������
(setq transient-mark-mode t)

