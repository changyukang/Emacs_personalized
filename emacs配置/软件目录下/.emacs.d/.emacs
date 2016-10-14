;;改变默认路径
(setenv "HOME" "D:/emacs-24.3")
(setenv "PATH" "D:/emacs-24.3")
;;set the default file path
;;(setq default-directory "~/")
;;设置打开文件的缺省路径
(setq default-directory "~/")


;;设置load-path,目录要用斜杠
(defvar default-ConBasicPath "D:/emacs-24.3/.emacs.d/" 
         "所有emacs自定义目录所在的基础路径" ) 
;;(defvar orgPath "D:/MyDocument/99.Org/" 
;;         "所有org文件所在的基础路径" ) 
;;(defvar cygwin-root-path "B:/cygwin/" 
;;     "cygwin的根目录" ) 
;;使用示例  
;;(add-to-list 'load-path (concat basicPath "lisp") ) 
;;不设置basicPath的情况下，可以直接：
;;(add-to-list 'load-path "~/your_path_to_elisp") 


;;启动后自动加载上次关闭时的缓存区
(desktop-save-mode 1)
;;desktop-auto-save-timeout
;;desktop-restore-frames

;;插件使用示例
;;建立文件夹ConFile，把插件都扔进去，比如说display-line-number.el在.emacs中写入下面的代码。
;;显示行号
;;(load-file "~/ConFile/display-line-number.el")
;;(require 'display-line-number)
;;(global-display-line-number-mode t)

(setq visible-bell t)
;;关闭烦人的出错时的提示声
;;(setq inhibit-startup-message t)
;;关闭emacs启动时的画面
(setq gnus-inhibit-startup-message t)
;;关闭gnus启动时的画面,windows下貌似没有


(setq case-fold-search nil);;查找的时候就强制匹配大小写t,nil
(setq case-replace  nil);;强制大小写自动替换

(fset 'yes-or-no-p 'y-or-n-p);; 改变 Emacs 固执的要你回答 yes 的行为。按 y 或空格键表示 yes，n 表示 no


;;设置缺省主模式是text，,并进入auto-fill次模式.而不是基本模式fundamental-mode
(setq major-mode 'text-mode)
(add-hook 'text-mode-hook 'turn-on-auto-fill)

(setq mouse-avoidance-mode 'animate)
;;光标靠近鼠标指针时，让鼠标指针自动让开，别挡住视线。

(setq frame-title-format "emacs@%b")
;;在标题栏显示buffer的名字，而不是 emacs@wangyin.com 这样没用的提示。

(setq auto-image-file-mode t)
;;让 Emacs 可以直接打开和显示图片。

(auto-compression-mode 1)
;打开压缩文件时自动解压缩。



(add-hook 'comint-output-filter-functions
'comint-watch-for-password-prompt)
;;当你在shell、telnet、w3m等模式下时，必然碰到过要输入密码的情况,此时加密显出你的密码

(setq require-final-newline t)
;; 自动的在文件末增加一新行

(setq track-eol t)
;; 当光标在行尾上下移动的时候，始终保持在行尾。

(setq Man-notify-method 'pushy)
;; 当浏览 man page 时，直接跳转到 man buffer。


;;(global-set-key [home] 'beginning-of-buffer)
;;(global-set-key [end] 'end-of-buffer)
;;设置home键指向buffer开头，end键指向buffer结尾

(setq sentence-end "\\([。！？]\\|……\\|[.?!][]\"')}]*\\($\\|[ \t]\\)\\)[ \t\n]*")
(setq sentence-end-double-space nil)
;;设置 sentence-end 可以识别中文标点。不用在 fill 时在句号后插入两个空格。

(setq-default indent-tabs-mode nil)
(setq c-basic-offset 4)
(setq tab-width 4)
(setq tab-stop-list ())
;;不用 TAB 字符来indent, 这会引起很多奇怪的错误。编辑 Makefile 的时候也不用担心，因为 makefile-mode 会把 TAB 键设置成真正的 TAB 字符，并且加亮显示的。

(setq-default auto-fill-function 'do-auto-fill)
;; Autofill in all modes
(setq fill-column 60)
;;把 fill-column 设为 60. 这样的文字更好读

(setq kill-ring-max 200)
;;设置粘贴缓冲条目数量.用一个很大的kill ring(最多的记录个数). 这样防止我不小心删掉重要的东西

;; 高亮显示选择区域
(setq transient-mark-mode t)



;;--------------窗口界面设置------------------

;;b.颜色设置
;;(set-foreground-color "grey")

;;(set-background-color "black")

;;(set-cursor-color "gold1")

;;(set-mouse-color "gold1")

;; 设置另外一些颜色：语法高亮显示的背景和主题，区域选择的背景和主题，二次选择的背景和选择

;;(set-face-foreground 'highlight "white")

;;(set-face-background 'highlight "blue")

;;(set-face-foreground 'region "cyan")

;;(set-face-background 'region "blue")

;;(set-face-foreground 'secondary-selection "skyblue")

;;(set-face-background 'secondary-selection "darkblue")

;;颜色主题
;;首先，设置颜色主题load-path
(add-to-list 'load-path (concat default-ConBasicPath "ConFile/ColorTheme") ) 
;;然后，安装color-theme
(require 'color-theme)
;;下面这句防止报错
;;(color-theme-initialize)
;;最后，选择自己喜欢的主题
;;(color-theme-oswald)
;;还可以像下面这样选择主题,主题要放在themes文件夹中
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     (color-theme-blackboard-modify)))

;;e.颜色设置


;;b.字体设置
(defun qiang-font-existsp (font)
  (if (null (x-list-fonts font))
      nil t))

(defvar font-list '("Microsoft Yahei" "文泉驿等宽微米黑" "黑体" "新宋体" "宋体"))
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
 '("Microsoft Yahei" "文泉驿等宽微米黑" "黑体" "新宋体" "宋体"))

;;e.字体设置


;;启动设置
;;(setq default-frame-alist '((vertical-scroll-bars) (top . 25) (left . 45) (width . 180) (height . 55)

;;(background-color . "black") (foreground-color . "grey")(cursor-color . "gold1") (mouse-color . "gold1") (tool-bar-lines . 0) (menu-bar-lines . 1) (right-fringe) (left-fringe)))


;;启动自动最大化(数据自己调整，注意格式，如(top . 0)，圆点前后都要留有空格)
(setq initial-frame-alist '((top . 0) (left . 0) (width . 133) (height . 29)))

;;设置全屏快捷键
;;(require 'darkroom-mode)
;;(global-set-key [f11] 'fullscreen)



(set-scroll-bar-mode nil)
;;取消滚动栏

;;(customize-set-variable 'scroll-bar-mode 'right))
;;设置滚动栏在窗口右侧，而默认是在左侧

;;(tool-bar-mode nil)
(tool-bar-mode -1);;取消工具栏
;;(menu-bar-mode -1);;取消菜单栏

;;显示行号或者m-x  global-linum-mode回车(m-x就是Alt+x)
(global-linum-mode t)
(setq global-linum-mode t);行号
(setq column-number-mode t)
(setq line-number-mode t);;显示行列号

(setq global-font-lock-mode t);;进行语法加亮


;;------------窗口界面设置结束-----------------


;;------------显示时间设置------------------------------

(display-time-mode 1);;启用时间显示设置，在minibuffer上面的那个杠上

(setq display-time-24hr-format t);;时间使用24小时制

(setq display-time-day-and-date t);;时间显示包括日期和具体时间

(setq display-time-use-mail-icon t);;时间栏旁边启用邮件设置

(setq display-time-interval 10);;时间的变化频率，单位多少来着？

;;------------显示时间设置结束--------------


