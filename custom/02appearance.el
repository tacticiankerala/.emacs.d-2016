;;theme
(load-theme 'molokai t)


;; Highlight incremental search
(setq search-highlight t)
(transient-mark-mode t)

(global-visual-line-mode t)
(global-linum-mode t)

(show-paren-mode t)


;;pop-win mode
(require 'popwin)
(popwin-mode t)

(require 'git-gutter-fringe+)
(set-face-foreground 'git-gutter+-modified "yellow")
(set-face-foreground 'git-gutter+-added    "green")
(set-face-foreground 'git-gutter+-deleted  "red")
(global-git-gutter+-mode)



(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;;customize theme
(let ((zenburn-fg-1             "#656555")
      (zenburn-fg              "#dcdccc")
      (zenburn-fg+1            "#FFFFEF")
      (zenburn-bg-1            "#2b2b2b")
      (zenburn-bg              "#3f3f3f")
      (zenburn-bg+1            "#4f4f4f")
      (zenburn-bg+2            "#5f5f5f")
      (zenburn-bg+3            "#6F6F6F")
      (zenburn-bg+05           "#494949")
      (zenburn-red+1           "#dca3a3")
      (zenburn-red             "#cc9393")
      (zenburn-red-1           "#bc8383")
      (zenburn-red-2           "#ac7373")
      (zenburn-red-3           "#9c6363")
      (zenburn-red-4           "#8c5353")
      (zenburn-orange          "#dfaf8f")
      (zenburn-yellow          "#f0dfaf")
      (zenburn-yellow-1        "#e0cf9f")
      (zenburn-yellow-2        "#d0bf8f")

      (zenburn-green-4         "#2e3330")
      (zenburn-green-1         "#5f7f5f")
      (zenburn-green           "#7f9f7f")
      (zenburn-green+1         "#8fb28f")
      (zenburn-green+2         "#9fc59f")
      (zenburn-green+3         "#afd8af")
      (zenburn-green+4         "#bfebbf")
      (zenburn-cyan            "#93e0e3")
      (zenburn-blue+1          "#94bff3")
      (zenburn-blue            "#8cd0d3")
      (zenburn-blue-1          "#7cb8bb")
      (zenburn-blue-2          "#6ca0a3")
      (zenburn-blue-3          "#5c888b")
      (zenburn-blue-4          "#4c7073")
      (zenburn-blue-5          "#366060")
      (zenburn-magenta         "#dc8cc3"))

  (custom-theme-set-faces

   ;;CURRENT THEME NAME!
   'molokai

   ;;rainbow delimeters
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,zenburn-cyan))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,zenburn-yellow))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,zenburn-blue+1))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,zenburn-red+1))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,zenburn-green+1))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,zenburn-blue-1))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,zenburn-orange))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,zenburn-magenta))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,zenburn-yellow-2))))
   `(rainbow-delimiters-depth-10-face ((t (:foreground ,zenburn-green+2))))
   `(rainbow-delimiters-depth-11-face ((t (:foreground ,zenburn-blue+1))))
   `(rainbow-delimiters-depth-12-face ((t (:foreground ,zenburn-red-4))))

   ;;paren match
   '(show-paren-mismatch ((t (:inherit font-lock-warning :weight bold))))
   `(show-paren-match ((t (:background ,zenburn-bg+2 :underline nil))))

   ;;;;; magit
;;;;;; headings and diffs
   `(magit-section-highlight           ((t (:background ,zenburn-bg+05))))
   `(magit-section-heading             ((t (:foreground ,zenburn-yellow :weight bold))))
   `(magit-section-heading-selection   ((t (:foreground ,zenburn-orange :weight bold))))
   `(magit-diff-file-heading           ((t (:weight bold))))
   `(magit-diff-file-heading-highlight ((t (:background ,zenburn-bg+05  :weight bold))))
   `(magit-diff-file-heading-selection ((t (:background ,zenburn-bg+05
                                                        :foreground ,zenburn-orange :weight bold))))
   `(magit-diff-hunk-heading           ((t (:background ,zenburn-bg+1))))
   `(magit-diff-hunk-heading-highlight ((t (:background ,zenburn-bg+2))))
   `(magit-diff-hunk-heading-selection ((t (:background ,zenburn-bg+2
                                                        :foreground ,zenburn-orange))))
   `(magit-diff-lines-heading          ((t (:background ,zenburn-orange
                                                        :foreground ,zenburn-bg+2))))
   `(magit-diff-context-highlight      ((t (:background ,zenburn-bg+05
                                                        :foreground "grey70"))))
   `(magit-diffstat-added   ((t (:foreground ,zenburn-green+4))))
   `(magit-diffstat-removed ((t (:foreground ,zenburn-red))))
;;;;;; popup
   `(magit-popup-heading             ((t (:foreground ,zenburn-yellow  :weight bold))))
   `(magit-popup-key                 ((t (:foreground ,zenburn-green-1 :weight bold))))
   `(magit-popup-argument            ((t (:foreground ,zenburn-green   :weight bold))))
   `(magit-popup-disabled-argument   ((t (:foreground ,zenburn-fg-1    :weight normal))))
   `(magit-popup-option-value        ((t (:foreground ,zenburn-blue-2  :weight bold))))
;;;;;; process
   `(magit-process-ok    ((t (:foreground ,zenburn-green  :weight bold))))
   `(magit-process-ng    ((t (:foreground ,zenburn-red    :weight bold))))
;;;;;; log
   `(magit-log-author    ((t (:foreground ,zenburn-orange))))
   `(magit-log-date      ((t (:foreground ,zenburn-fg-1))))
   `(magit-log-graph     ((t (:foreground ,zenburn-fg+1))))
;;;;;; sequence
   `(magit-sequence-pick ((t (:foreground ,zenburn-yellow-2))))
   `(magit-sequence-stop ((t (:foreground ,zenburn-green))))
   `(magit-sequence-part ((t (:foreground ,zenburn-yellow))))
   `(magit-sequence-head ((t (:foreground ,zenburn-blue))))
   `(magit-sequence-drop ((t (:foreground ,zenburn-red))))
   `(magit-sequence-done ((t (:foreground ,zenburn-fg-1))))
   `(magit-sequence-onto ((t (:foreground ,zenburn-fg-1))))
;;;;;; bisect
   `(magit-bisect-good ((t (:foreground ,zenburn-green))))
   `(magit-bisect-skip ((t (:foreground ,zenburn-yellow))))
   `(magit-bisect-bad  ((t (:foreground ,zenburn-red))))
;;;;;; blame
   `(magit-blame-heading ((t (:background ,zenburn-bg-1 :foreground ,zenburn-blue-2))))
   `(magit-blame-hash    ((t (:background ,zenburn-bg-1 :foreground ,zenburn-blue-2))))
   `(magit-blame-name    ((t (:background ,zenburn-bg-1 :foreground ,zenburn-orange))))
   `(magit-blame-date    ((t (:background ,zenburn-bg-1 :foreground ,zenburn-orange))))
   `(magit-blame-summary ((t (:background ,zenburn-bg-1 :foreground ,zenburn-blue-2
                                          :weight bold))))
;;;;;; references etc
   `(magit-dimmed         ((t (:foreground ,zenburn-bg+3))))
   `(magit-hash           ((t (:foreground ,zenburn-bg+3))))
   `(magit-tag            ((t (:foreground ,zenburn-orange :weight bold))))
   `(magit-branch-remote  ((t (:foreground ,zenburn-green  :weight bold))))
   `(magit-branch-local   ((t (:foreground ,zenburn-blue   :weight bold))))
   `(magit-branch-current ((t (:foreground ,zenburn-blue   :weight bold :box t))))
   `(magit-head           ((t (:foreground ,zenburn-blue   :weight bold))))
   `(magit-refname        ((t (:background ,zenburn-bg+2 :foreground ,zenburn-fg :weight bold))))
   `(magit-refname-stash  ((t (:background ,zenburn-bg+2 :foreground ,zenburn-fg :weight bold))))
   `(magit-refname-wip    ((t (:background ,zenburn-bg+2 :foreground ,zenburn-fg :weight bold))))
   `(magit-signature-good      ((t (:foreground ,zenburn-green))))
   `(magit-signature-bad       ((t (:foreground ,zenburn-red))))
   `(magit-signature-untrusted ((t (:foreground ,zenburn-yellow))))
   `(magit-cherry-unmatched    ((t (:foreground ,zenburn-cyan))))
   `(magit-cherry-equivalent   ((t (:foreground ,zenburn-magenta))))
   `(magit-reflog-commit       ((t (:foreground ,zenburn-green))))
   `(magit-reflog-amend        ((t (:foreground ,zenburn-magenta))))
   `(magit-reflog-merge        ((t (:foreground ,zenburn-green))))
   `(magit-reflog-checkout     ((t (:foreground ,zenburn-blue))))
   `(magit-reflog-reset        ((t (:foreground ,zenburn-red))))
   `(magit-reflog-rebase       ((t (:foreground ,zenburn-magenta))))
   `(magit-reflog-cherry-pick  ((t (:foreground ,zenburn-green))))
   `(magit-reflog-remote       ((t (:foreground ,zenburn-cyan))))
   `(magit-reflog-other        ((t (:foreground ,zenburn-cyan))))


   ))
