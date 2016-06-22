(require 'align-cljlet)
(require 'clojure-mode-extra-font-locking)
(require 'clj-refactor)

(add-hook 'clojure-mode-hook 'turn-on-eldoc-mode)
(setq nrepl-popup-stacktraces nil)
(add-to-list 'same-window-buffer-names "<em>nrepl</em>")


;; Poping-up contextual documentation
(eval-after-load "cider"
  '(define-key cider-mode-map (kbd "C-c C-d") 'ac-nrepl-popup-doc))

(add-hook 'clojure-mode-hook 'paredit-mode)

(add-hook 'cider-repl-mode-hook #'subword-mode)

(add-hook 'cider-repl-mode-hook #'smartparens-strict-mode)

(add-hook 'cider-repl-mode-hook #'rainbow-delimiters-mode)

(show-paren-mode 1)


(add-hook 'cider-mode-hook #'eldoc-mode)

(setq cider-repl-popup-stacktraces nil)
(setq cider-show-error-buffer nil)
(setq cider-use-overlays nil)

(defun do-before-save ()
  (clean-up-buffer-or-region)
  (align-cljlet))

(defun my-clojure-mode-hook ()
  (clj-refactor-mode 1)
  (yas-minor-mode 1) ; for adding require/use/import
  (cljr-add-keybindings-with-prefix "C-c C-r")
  (add-hook 'before-save-hook 'do-before-save nil 'make-it-local))

(add-hook 'clojure-mode-hook #'my-clojure-mode-hook)
