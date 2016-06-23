(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "C-x C-x") 'smex)


;; Use windmove bindings
;; Navigate between windows using Ctrl-Shift-left, Ctrl-shift-up, shift-right
(global-set-key [S-left]  'windmove-left)
(global-set-key [S-right] 'windmove-right)
(global-set-key [S-up]    'windmove-up)
(global-set-key [S-down]  'windmove-down)
(global-set-key [C-S-left]  'buf-move-left)
(global-set-key [C-S-right] 'buf-move-right)
(global-set-key [C-S-up]    'buf-move-up)
(global-set-key [C-S-down]  'buf-move-down)


(global-set-key (kbd "C-=") 'er/expand-region)

(global-set-key (kbd "C-M-\\") 'indent-region)

(require 'align-by-current-symbol)
(global-set-key (kbd "C-\\") 'align-by-current-symbol)


;;keybindings for custom functions
(global-set-key (kbd "C-<backspace>") 'backward-delete-word)


(global-set-key "\C-ct" 'visit-tags-table)
(global-set-key "\C-cd" 'create-tags)


(global-set-key (kbd "C-o") 'open-line-below)
(global-set-key (kbd "C-S-o") 'open-line-above)

(global-set-key (kbd "C-a") 'back-to-indentation-or-beginning-of-line)

(global-set-key (kbd "C-<return>") 'duplicate-current-line-or-region)

(global-set-key (kbd "C-M-;") 'comment-or-uncomment-current-line-or-region)

(global-set-key (kbd "M-j") 'join-line-or-lines-in-region)

;;multiple cursos
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
