;;改变默认路径
(setenv "HOME" "D:/emacs-24.3")
(setenv "PATH" "D:/emacs-24.3")
;;set the default file path
;;(setq default-directory "~/")
;;设置打开文件的缺省路径
(setq default-directory "~/")


;;启动时全屏
;;方法一
;; ------------------------------------------------------------------- 
;; 恢复窗口 和 窗口最大化 的命令 
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
;; 启动后即最大化 
;; ------------------------------------------------------------------- 
;; (w32-restore-frame) 
;;(w32-maximize-frame) 

;;方法二
;;设置窗口位置为屏库左上角(0,0) 
;;(set-frame-position (selected-frame) 0 0) 
;;设置宽和高,我的十寸小本是110,33,大家可以调整这个参数来适应自己屏幕大小 
;;(set-frame-width (selected-frame) 134) 
;;(set-frame-height (selected-frame) 32)

;;设置全屏快捷键
;;(require 'darkroom-mode)
;;(global-set-key [f11] 'fullscreen)


;;启动后自动加载上次关闭时的缓存区
(desktop-save-mode 1)


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


;;显示行号或者m-x  global-linum-mode回车(m-x就是Alt+x)
(global-linum-mode t)

(setq global-linum-mode t);行号
(setq column-number-mode t)
(setq line-number-mode t);;显示行列号

(setq case-fold-search nil);;查找的时候就强制匹配大小写t,nil
(setq case-replace  nil);;强制大小写自动替换

(set-scroll-bar-mode nil);;取消滚动栏
;;(tool-bar-mode nil);;取消工具栏
(tool-bar-mode -1)

;; 设置emacs窗口的位置和大小 
;; 让窗口最大化 
;;(require 'maxframe) 
;;(add-hook 'window-setup-hook 'maximize-frame t)
 

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

(setq global-font-lock-mode t)
;;进行语法加亮。

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
; Autofill in all modes;;
(setq fill-column 60)
;;把 fill-column 设为 60. 这样的文字更好读

(setq kill-ring-max 200)
;;设置粘贴缓冲条目数量.用一个很大的kill ring(最多的记录个数). 这样防止我不小心删掉重要的东西

;; 高亮显示选择区域
(setq transient-mark-mode t)

