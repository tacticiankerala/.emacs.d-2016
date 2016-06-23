###Installation
- Install emacs: `brew install emacs --use-git-head --cocoa --srgb`
- Install [Cask](https://github.com/cask/cask) and add cask path into `init.el`
- Install ctags: `brew install ctags` (ctag binary should be /usr/local/bin/ctags)
- Install silver searcher `brew install the_silver_searcher`
- Fix emacs terminfo
  - find eterm-color.ti inside emacs folder
  - run `tic -o ~/.terminfo <path to eterminfo>/eterm-color.ti`
  - add following to your ~/.zshrc. More info: http://stackoverflow.com/questions/8918910/weird-character-zsh-in-emacs-terminal

  ```
        export LANG=en_US.UTF-8
        export LC_ALL=en_US.UTF-8
        export TERM=xterm-256color
  ```
  

###Basic
- [cheatesheet](https://www.gnu.org/software/emacs/refcards/pdf/refcard.pdf)
- `Shift-<left/right/top/down arrow>` to navigate buffers
- `Ctrl-Shift-<left/right/top/down arrow>` to swap buffers
- `M-<up/down arrow>` to pull lines up or down
- `Ctrl-Del` to backward delete word
- `Ctrl-Shift-Del` to delete entire line
- `Ctrl-o` to open line below
- `Ctrl-O` to open line above
- `Ctrl-RET` to duplicate line or region
- `Ctrl-Meta-;'to  comment or uncomment line or region
- `Ctrl-\' to align by symbol
- `Ctrl-Meta-\' to indent region
- `Ctrl-Meta-j' to join lines
- `Ctrl-=` to expand region
- `Ctrl-x Ctrl-x` to open smex (this hack is for mac terminal)
- `Ctrl-x f' to run projectile-find-file
- `Ctrl-t` to toggle zsh shell prompt

###Other function
- nuke-all-buffers
- rename-buffer-and-file
- delelte-buffer-and-file
- align-regex

###clojure
- `Ctrl-x Ctrl-e` to evaluate form
- `Ctrl-c Ctrl-r` to invoke clojure refactor. [List of available options](https://github.com/clojure-emacs/clj-refactor.el/wiki)
- [Snippet](https://github.com/swannodette/clojure-snippets) are available
- `M-(` or `M-"` to Wrap an S expression
- `C-)` and `C-}` for slurping and burfing
- `M-S` ans `M-J` for splitting and joining
- [Paredit cheatsheet](http://pub.gajendra.net/src/paredit-refcard.pdf)

###Multiple cursors
- `C-S-c C-S-c` for mc/edit-lines
- `C->` for mc/mark-next-like-this
- `C-<` for mc/mark-previous-like-this

###Rectangle
- `C-x SPC` to activate rectangle mode
- `C-x r k` to kill
- `C-x r M-w` to copy
- `C-x r d` to delete
- `C-x r t <String>` to replace the contents with given text

###Ctags
- `Ctrl-c t` show c tags table
- `Ctrl-c d` create c tags


##Emacs IRC
- M-x circe RET irc.freenode.net RET RET
- More info : https://github.com/jorgenschaefer/circe/wiki

###Yet to try
- https://github.com/knu/elscreen
  -- create new `C-z c`
  -- switch to screen n `C-z <n>`
  -- kill `C-z k`
