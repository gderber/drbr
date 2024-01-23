;; =================================================================================================
;;
;; Filename: layers.el
;; Author: G S Derber
;;
;; =================================================================================================
(configuration-layer/declare-layers
 '(
   ;; 1. Personal Layers

   ;; 2. Chat
   ;; erc
   ;; jabber
   ;; rcirc
   ;; slack

   ;; 3. Checkers
   spell-checking
   syntax-checking

   ;; 4. Completion
   (auto-completion :variables
                    auto-completion-return-key-behavior 'complete
                    auto-completion-tab-key-behavior 'complete
                    auto-completion-enable-snippets-in-popup t)
   (helm :variables
         helm-position 'bottom)
   ;; ivy
   ;; templates

   ;; 5. Email
   gnus

   ;; 6. Emacs
   ;;better-helpful
   ;;defaults
   (ibuffer :variables
            ibuffer-group-buffers-by 'projects)
   ;;org (Moved to drbr-org)
   ;;outshine
   ;;quickurl
   ;;semantic
   ;;smex
   ;;tabs
   ;;typography

   ;; 7. File trees
   ;;neotree
   (treemacs :variables
             treemacs-lock-width t
             treemacs-use-scope-type 'Perspectives
             treemacs-use-follow-mode t
             treemacs-use-filewatch-mode t
             treemacs-use-git-mode 'deferred
             )


   ;; 8. Fonts
   ;;unicode-fonts

   ;; 9. Fun (Conditionally loaded based on gui environment (See below))
   ;;emoji (Conditionally loaded based on gui environment)
   ;;games (Conditionally loaded based on gui environment)
   ;;selectric (Conditionally loaded based on gui environment)
   ;;xkcd (Conditionally loaded based on gui environment)

   ;; 10. international
   ;;chinese
   ;;japanese
   ;;(keyboard-layout :variables kl-layout 'dvorak)

   ;; 11. Misc
   ;;copy-as-format
   ;;dtrt-indent
   ;;ietf
   ;;multiple-cursors
   ;;nav-flash
   ;;parinfer

   ;; 12. Music
   ;;alda
   ;;extempore
   ;;pianobar
   ;;spotify
   ;;tidalcycles

   ;; 13. Operating Systems

   ;; 14. Pair programming

   ;; 15. Programming languages
   ;; Emacs-lisp layer is not exactly required by spacemacs, but weird things happen if it's not
   ;; installed
   emacs-lisp
   ;; The remainder Conditionally loaded based on user directories (See below)

   ;; 16. Readers
   ;;elfeed

   ;; 17.

   ;; 18. Source Control
   ;; Conditionally loaded based on user directories (See below)


   ;; 19. Spacemacs

   ;; 20. Tagging
   ;;cscope
   (gtags :variables
          gtags-enable-by-default t)

   ;; 21. Themes
   colors
   themes-megapack
   theming

   ;; 22. Tools
   ;;ansible (Conditionally loaded based on if ansible exists on the system (See Below))
   ;;bm
   ;;cfengine
   ;;chrome
   command-log
   ;;docker
   ;;finance
   ;;(geolocation :variables
   ;;             geolocation-enable-weather-forecast t)
   ;;nginx (Conditionally loaded based on if Nginx is installed on the system (See Below))
   pandoc
   pass
   (shell :variables
          shell-default-height 30
          shell-default-position 'bottom
          shell-default-shell 'ansi-term)
   systemd
   search-engine

   ;; 23. Vim
   ;;evil-cleverparens

   ;; 24. Web Services
   ;;confluence
   ;;eaf
   ;;evernote
   ;;twitteer
   ;;wakatime


   )
 )

;; Conditionally configured layers
;; Originally based on if emacs was in a graphical environment.  This would fail if emacs was started automatically
;; upon login as a daemon, and these layers would be removed.  Requiring, reloading the layers manually each time.
;;(when (display-graphic-p)
(when (file-directory-p "~/Documents/")
  (configuration-layer/declare-layers
   '(
     emoji
     games
     xkcd
     epub
     pdf
     speed-reading

     ;; needed by xkcd
     javascript
     )))

(when (file-directory-p "~/Documents/Org")
  (configuration-layer/declare-layers
   '(
     (org :variables
       org-enable-notifications t
       org-start-notification-daemon-on-startup t
       org-enable-org-journal-support t
       org-journal-dir "~/Documents/Org/.journal/"
       org-journal-file-format "%Y-%m-%d"
       org-enable-github-support t
       org-projectile-file "TODOs.org"
       org-want-todo-bindings t
       org-enable-org-brain-support t
       org-enable-epub-support t)
     )))

(when (file-directory-p "~/Documents/Development")
  (configuration-layer/declare-layers
   '(
     ;; 15. Programming Languages
     (c-c++ :variables
            c-c++adopt-subprojects t
            c-c++-enable-organize-includes-on-save t
            c-c++backend 'lsp-clangd)
     csv
     graphviz
     html
     markdown
     ;; lua
     ;; php
     (python :variables
             python-backend 'anaconda
             python-test-runner 'pytest
             python-formatter 'yapf
             python-format-on-save t
             python-sort-imports-on-save t
             python-fill-column 100
             python-spacemacs-indent-guess nil)
     ;; rust
     shell-scripts
     sql
     ;; windows-scripts
     yaml



     ;; 22. Tools
     cmake
     debug
     )))

(when (executable-find "ansible")
  (configuration-layer/declare-layers
   '(
     ansible
     markdown
     yaml

)))

(when (or
       (executable-find "ansible")
       (file-directory-p "~/Documents/Development")
       (file-directory-p "~/Documents/Org"))
  (configuration-layer/declare-layers
   ;; 18. Source Control
  '(
    (git :variables
       git-enable-magit-gitflow-plugin t
       git-enable-magit-delta-plugin t
       git-enable-magit-todos-plugin t)
    (version-control :variables
                     version-control-diff-tool 'git-gutter
                     version-control-diff-side 'left
                     version-control-global-margin t)
    )
  )
)

(when (executable-find "apache2")
  (configuration-layer/declare-layers
  '(
    apache
    )))

(when (executable-find "nginx")
  (configuration-layer/declare-layers
   '(
     nginx
     )))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; layers.el ends here
