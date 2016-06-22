(projectile-global-mode)
(setq projectile-enable-caching t)
(require 'grizzl)
(projectile-global-mode)
(setq projectile-enable-caching t)
(setq projectile-completion-system 'grizzl)

(global-set-key (kbd "C-x f") 'projectile-find-file)

(global-set-key (kbd "C-s-b") 'projectile-switch-to-buffer)
