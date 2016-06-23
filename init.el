(require 'cask "/usr/local/Cellar/cask/0.7.4/cask.el")
(cask-initialize)
(require 'pallet)

(add-to-list 'load-path "~/.emacs.d/vendor")
(add-to-list 'load-path "~/.emacs.d/custom")

;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/noctilux-theme")

(load "00common-setup.el")
(load "01custom-func.el")
(load "02appearance.el")
(load "03bindings.el")
(load "04common-hooks.el")
(load "05auto-complete.el")
(load "06projectile.el")
(load "07clojure.el")
(load "08web-mode.el")
(load "09yasnippet-setup.el")
(load "10sql-setup.el")
(load "11jsx-mode.el")
(put 'erase-buffer 'disabled nil)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(shell-file-name "/usr/local/bin/zsh")
 '(shell-pop-full-span t)
 '(shell-pop-shell-type
   (quote
    ("ansi-term" "*ansi-term*"
     (lambda nil
       (ansi-term shell-pop-term-shell)))))
 '(shell-pop-term-shell "/usr/local/bin/zsh")
 '(shell-pop-universal-key "C-t")
 '(shell-pop-window-size 50))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
