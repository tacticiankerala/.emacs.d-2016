;;remove initial welcome screen
(setq inhibit-startup-message t)

;; To get rid of Weird color escape sequences in Emacs.
;; Instruct Emacs to use emacs term-info not system term info
;; http://stackoverflow.com/questions/8918910/weird-character-zsh-in-emacs-terminal
(setq system-uses-terminfo nil)

;; Prefer utf-8 encoding
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-language-environment "UTF-8")
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
;; Display continuous lines
(setq-default truncate-lines nil)

;; Do not use tabs for indentation
(setq-default indent-tabs-mode nil)
(delete-selection-mode t)

;;use maximum space by avoiding menubar and toolbar
(menu-bar-mode -1)
(tool-bar-mode -1)

;; y/n instead of yes/no
(defalias 'yes-or-no-p 'y-or-n-p)

;; Enable copy and pasting from clipboard
(setq x-select-enable-clipboard t)

;;give unique names to buffers
(require 'uniquify)
(setq uniquify-buffer-name-style 'reverse)
(setq uniquify-separator "/")
(setq uniquify-after-kill-buffer-p t) ; rename after killing uniquified
(setq uniquify-ignore-buffers-re "^\\*") ; don't muck with special buffers



(setq path-to-ctags "/usr/local/bin/ctags") ;; <- you're ctags path here

;;backup settings
(setq
 backup-by-copying t      ; don't clobber symlinks
 backup-directory-alist
 '(("." . "~/.emacs.d/saves"))    ; don't litter my fs tree
 delete-old-versions t
 kept-new-versions 6
 kept-old-versions 2
 version-control t)       ; use versioned backups

;;no visible bell
(setq ring-bell-function 'ignore)
;;auto revert mode
(global-auto-revert-mode t)


;;drag-stuff-mode
(drag-stuff-global-mode t)


;;undo tree mode
(global-undo-tree-mode)
(diminish 'undo-tree-mode)

;;disable dialogue boxes - it causes emacs to hang
(setq use-dialog-box nil)

;;start maximized
(modify-all-frames-parameters '((fullscreen . maximized)))

;;ido mode
(ido-mode 1)
(ido-vertical-mode 1)


(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize))

(scroll-bar-mode -1)
;; scroll one line at a time (less "jumpy" than defaults)

(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time

(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling

(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse

(setq scroll-step 1) ;; keyboard scroll one line at a time

(elscreen-start)

(require 'smartparens-config)
(smartparens-global-mode t)

;;magit buffer fix
(setq server-temp-file-regexp "^/tmp/Re\\|/draft\\|COMMIT_EDITMSG$")
