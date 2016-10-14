;;------------��������------------------

;; �ı�Ĭ��·��
(setenv "HOME" "D:/emacs-24.3")
(setenv "PATH" "D:/emacs-24.3")
;; ���ô��ļ���ȱʡ·��
(setq default-directory "~/")

;; �������Զ������ϴιر�ʱ�Ļ�����
(desktop-save-mode 1)
;;desktop-auto-save-timeout
;;desktop-restore-frames

;;���Լ����ó�autoload����symbol������ͨ�� M-x my-init-mode �ķ�ʽ����ˢ��init.el�е�����
;;���磬����org-mode�������ú��뽫���廹ԭ����ô���룺M-x my-init-mode
(autoload 'my-init-mode "~/.emacs.d/init" "my init.el configuration." t nil)
;;����ִ��M-x my-org-mode��ʱ��Emacs�Ż�ȥ����my-org-mode.el
(symbol-function 'my-init-mode) 

;;------------�������ý���--------------


;;------------ϲ������------------------

(setq visible-bell t) ;;�رշ��˵ĳ���ʱ����ʾ��
;;(setq inhibit-startup-message t) ;;�ر�emacs����ʱ�Ļ���
(setq gnus-inhibit-startup-message t) ;;�ر�gnus����ʱ�Ļ���,windows��ò��û��


(setq case-fold-search nil) ;;���ҵ�ʱ���ǿ��ƥ���Сдt,nil
(setq case-replace  nil) ;;ǿ�ƴ�Сд�Զ��滻
(fset 'yes-or-no-p 'y-or-n-p) ;;�ı� Emacs ��ִ��Ҫ��ش� yes ����Ϊ���� y ��ո����ʾ yes��n ��ʾ no

;; ����ȱʡ��ģʽ��text��,������auto-fill��ģʽ.�����ǻ���ģʽfundamental-mode
(setq major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

(setq mouse-avoidance-mode 'animate) ;;��꿿�����ָ��ʱ�������ָ���Զ��ÿ�����ס����

(setq frame-title-format "emacs@%b");;�ڱ�������ʾbuffer�����֣������� emacs@wangyin.com ����û�õ���ʾ

(setq auto-image-file-mode t) ;;�� Emacs ����ֱ�Ӵ򿪺���ʾͼƬ

(auto-compression-mode 1) ;;��ѹ���ļ�ʱ�Զ���ѹ��

;; ������shell��telnet��w3m��ģʽ��ʱ����Ȼ������Ҫ������������,��ʱ�����Գ��������
(add-hook 'comint-output-filter-functions 'comint-watch-for-password-prompt)

(setq require-final-newline t) ;;�Զ������ļ�ĩ����һ����

(setq track-eol t) ;;���������β�����ƶ���ʱ��ʼ�ձ�������β

(setq Man-notify-method 'pushy) ;;����� man page ʱ��ֱ����ת�� man buffer

;; ����home��ָ��buffer��ͷ��end��ָ��buffer��β
;;(global-set-key [home] 'beginning-of-buffer)
;;(global-set-key [end] 'end-of-buffer)

;; ���� sentence-end ����ʶ�����ı�㡣������ fill ʱ�ھ�ź���������ո�
(setq sentence-end "\\([������]\\|����\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)

;; ���� TAB �ַ���indent, �������ܶ���ֵĴ��󡣱༭ Makefile ��ʱ��Ҳ���õ��ģ���Ϊ makefile-mode ��� TAB �����ó������� TAB �ַ������Ҽ�����ʾ��
(setq-default indent-tabs-mode nil)
(setq c-basic-offset 4)
(setq tab-width 4)
(setq tab-stop-list ())

(setq-default auto-fill-function 'do-auto-fill) ;;Autofill in all modes
(setq fill-column 60) ;;�� fill-column ��Ϊ 60. ���������ָ��ö�

(setq kill-ring-max 200) ;;����ճ��������Ŀ����.��һ���ܴ��kill ring(���ļ�¼����). ������ֹ�Ҳ�С��ɾ����Ҫ�Ķ���

(setq transient-mark-mode t) ;;������ʾѡ������

;;�Զ�������ʾ�������Ƿֳɶ�����ʾ
(custom-set-variables
 '(truncate-partial-width-windows nil))
(global-visual-line-mode 1) ;;�Զ����к���ʾ��ɫС��ͷ

;;------------ϲ�����ý���--------------------


;;------------PATH�ͱ�������------------------

;; ����load-path,Ŀ¼Ҫ��б��
(defvar default-ConBasicPath "D:/emacs-24.3/.emacs.d/" 
         "����emacs�Զ���Ŀ¼���ڵĻ���·��" ) 
;;(defvar orgPath "D:/MyDocument/99.Org/" 
;;         "����org�ļ����ڵĻ���·��" ) 
;;(defvar cygwin-root-path "B:/cygwin/" 
;;     "cygwin�ĸ�Ŀ¼" ) 
;; ʹ��ʾ��  
;;(add-to-list 'load-path (concat basicPath "lisp") ) 
;; ������basicPath������£�����ֱ�ӣ�
;;(add-to-list 'load-path "~/your_path_to_elisp") 


;; ���ʹ��ʾ��
;; �����ļ���ConFile���Ѳ�����ӽ�ȥ������˵display-line-number.el��.emacs��д������Ĵ��롣
;; ��ʾ�к�
;;(load-file "~/ConFile/display-line-number.el")
;;(require 'display-line-number)
;;(global-display-line-number-mode t)

;;------------PATH�ͱ������ý���--------------



;;--------------���ڽ�������------------------

;; b.��ɫ����
;;(set-foreground-color "grey")

;;(set-background-color "black")

;;(set-cursor-color "gold1")

;;(set-mouse-color "gold1")

;; ��������һЩ��ɫ���﷨������ʾ�ı��������⣬����ѡ��ı��������⣬����ѡ��ı�����ѡ��

;;(set-face-foreground 'highlight "white")

;;(set-face-background 'highlight "blue")

;;(set-face-foreground 'region "cyan")

;;(set-face-background 'region "blue")

;;(set-face-foreground 'secondary-selection "skyblue")

;;(set-face-background 'secondary-selection "darkblue")

;; ��ɫ����
;; ���ȣ�������ɫ����load-path
(add-to-list 'load-path (concat default-ConBasicPath "ConFile/ColorTheme") ) 
;; Ȼ�󣬰�װcolor-theme
(require 'color-theme)
;; ��������ֹ����
;;(color-theme-initialize)
;; ���ѡ���Լ�ϲ��������
;;(color-theme-oswald)
;; ����������������ѡ������,����Ҫ����themes�ļ�����
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-blackboard-modify)))

;; e.��ɫ����


;; b.��������
(defun qiang-font-existsp (font)
  (if (null (x-list-fonts font))
      nil t))

(defvar font-list '("Microsoft Yahei" "��Ȫ��ȿ�΢�׺�" "����" "������" "����"))
(require 'cl) ;; find-if is in common list package
(find-if #'qiang-font-existsp font-list)

(defun qiang-make-font-string (font-name font-size)
  (if (and (stringp font-size) 
           (equal ":" (string (elt font-size 0))))
      (format "%s%s" font-name font-size)
    (format "%s %s" font-name font-size)))

(defun qiang-set-font (english-fonts
                       english-font-size
                       chinese-fonts
                       &optional chinese-font-size)
  "english-font-size could be set to \":pixelsize=18\" or a integer.
If set/leave chinese-font-size to nil, it will follow english-font-size"
  (require 'cl)                         ; for find if
  (let ((en-font (qiang-make-font-string
                  (find-if #'qiang-font-existsp english-fonts)
                  english-font-size))
        (zh-font (font-spec :family (find-if #'qiang-font-existsp chinese-fonts)
                            :size chinese-font-size)))
 
    ;; Set the default English font
    ;; 
    ;; The following 2 method cannot make the font settig work in new frames.
    ;; (set-default-font "Consolas:pixelsize=18")
    ;; (add-to-list 'default-frame-alist '(font . "Consolas:pixelsize=18"))
    ;; We have to use set-face-attribute
    (message "Set English Font to %s" en-font)
    (set-face-attribute
     'default nil :font en-font)
 
    ;; Set Chinese font 
    ;; Do not use 'unicode charset, it will cause the english font setting invalid
    (message "Set Chinese Font to %s" zh-font)
    (dolist (charset '(kana han symbol cjk-misc bopomofo))
      (set-fontset-font (frame-parameter nil 'font)
                        charset
                        zh-font))))

(qiang-set-font
 '("Consolas" "Monaco" "DejaVu Sans Mono" "Monospace" "Courier New") ":pixelsize=18"
 '("Microsoft Yahei" "��Ȫ��ȿ�΢�׺�" "����" "������" "����"))

;; e.��������


;; ��������
;;(setq default-frame-alist '((vertical-scroll-bars) (top . 25) (left . 45) (width . 180) (height . 55)

;;(background-color . "black") (foreground-color . "grey")(cursor-color . "gold1") (mouse-color . "gold1") (tool-bar-lines . 0) (menu-bar-lines . 1) (right-fringe) (left-fringe)))


;; �����Զ����(�����Լ�������ע���ʽ����(top . 0)��Բ��ǰ��Ҫ���пո�)
(setq initial-frame-alist '((top . 0) (left . 0) (width . 133) (height . 29)))

;; ����ȫ����ݼ�
;;(require 'darkroom-mode)
;;(global-set-key [f11] 'fullscreen)



(set-scroll-bar-mode nil) ;;ȡ��������

;;(customize-set-variable 'scroll-bar-mode 'right)) ;;���ù������ڴ����Ҳ࣬��Ĭ���������

;;(tool-bar-mode nil)
(tool-bar-mode -1) ;;ȡ��������
;;(menu-bar-mode -1) ;;ȡ���˵���

;;��ʾ�кŻ���m-x  global-linum-mode�س�(m-x����Alt+x)
(global-linum-mode t)
(setq global-linum-mode t) ;;�к�
(setq column-number-mode t)
(setq line-number-mode t) ;;��ʾ���к�

(setq global-font-lock-mode t) ;;�����﷨����


;;------------���ڽ������ý���-----------------


;;------------��ʾʱ������------------------------------

(display-time-mode 1) ;;����ʱ����ʾ���ã���minibuffer������Ǹ�����

(setq display-time-24hr-format t) ;;ʱ��ʹ��24Сʱ��

(setq display-time-day-and-date t) ;;ʱ����ʾ�������ں;���ʱ��

(setq display-time-use-mail-icon t) ;;ʱ�����Ա������ʼ�����

(setq display-time-interval 10) ;;ʱ��ı仯Ƶ�ʣ���λ�������ţ�

;;------------��ʾʱ�����ý���--------------------------


;;------------�Դ���������------------------------------

(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)


;;------------�Դ��������ý���--------------------------


;;------------org-mode��������--------------------------

;;����autoload���͵�symbol my-org-mode,��mode��Ӧ��el�ļ�λ��"~/.emacs.d/my-org-mode"
(autoload 'my-org-mode "D:\emacs-24.3\.emacs.d\my-org-mode" "my org-mode configuration." t nil)
;;����ִ��M-x my-org-mode��ʱ��Emacs�Ż�ȥ����my-org-mode.el
(symbol-function 'my-org-mode) 

;;------------org-mode�������ý���----------------------
