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
   (spell-checking :variables
                   enable-flyspell-auto-completion t)
   syntax-checking

   ;; 4. Completion
   (auto-completion :variables
                    auto-completion-complete-with-key-sequence nil
                    auto-completion-complete-with-key-sequence-delay 0.1
                    auto-completion-enable-help-tooltip nil
                    auto-completion-enable-snippets-in-popup t
                    auto-completion-enable-sort-by-usage t
                    auto-completion-idle-delay nil
                    auto-completion-minimum-prefix-length 2
                    auto-completion-private-snippets-directory nil
                    auto-completion-return-key-behavior 'complete
                    auto-completion-tab-key-behavior 'complete
                    auto-completion-use-company-box nil
                    )
   (helm :variables
         helm-position 'bottom)
   ;; ivy
   ;; templates

   ;; 5. Email
   ;; gnus

   ;; 6. Emacs
   ;;better-helpful
   ;;defaults
   (ibuffer :variables
            ibuffer-group-buffers-by 'projects)
   ;;org (Conditionally loaded based on directory structure.)
   ;;outshine
   ;;quickurl
   ;;semantic
   ;;smex
   ;;tabs  ;; Removed because I found it annoying
   ;;typography

   ;; 7. File trees
   ;;neotree
   (treemacs :variables
             treemacs-lock-width t
             treemacs-use-scope-type 'Perspectives
             treemacs-use-follow-mode t
             treemacs-use-filewatch-mode nil
             treemacs-use-git-mode 'deferred
             )


   ;; 8. Fonts
   unicode-fonts

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
   dtrt-indent
   ietf
   ;;multiple-cursors
   nav-flash
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
   ;; While emacs-lisp layer is not exactly required by spacemacs, they do warn against disabling
   ;; it and weird things happen if it's not installed
   (emacs-lisp :variables
               emacs-lisp-format-on-save nil)
   ;; The remainder Conditionally loaded based on user directories (See below)

   ;; 16. Readers
   ;;elfeed

   ;; 17.

   ;; 18. Source Control
   ;; Conditionally loaded based on user directories (See below)


   ;; 19. Spacemacs
   ;; (spacemacs-layouts :variables
   ;;                    ;; spacemacs-layouts-restrict-spc-tab 't)
   ;;                    persp-autokill-buffer-on-remove 't)

   ;; 21. Themes
   colors
   themes-megapack
   theming

   ;; 22. Tools
   ;;bm
   ;;cfengine
   ;;chrome
   command-log
   ;;docker
   ;;finance
   ;;(geolocation :variables
   ;;             geolocation-enable-weather-forecast t)
   ;;nginx (Conditionally loaded based on if Nginx is installed on the system (See Below))
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

;; Originally based on if emacs was in a graphical environment.  This would fail if emacs was
;; started automatically upon login as a daemon, and these layers would be removed.  Requiring,
;; reloading the layers manually each time.
;; (when (display-graphic-p)
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
     ))

  )

;; Conditionally load ansible related layers
(when (or
       ;;(executable-find "ansible")
       (file-directory-p "~/.ansible/collections/ansible_collections")
       (file-directory-p "~/.ansible/inventories")
       )
  (load-file "~/.emacs.d/private/drbr/layers/ansible.el")
  )

;; (when (file-directory-p org-directory)
;;   (load-file "~/.emacs.d/private/drbr/layers/org.el")
;;   )

(when (or
       (file-directory-p "~/Src")
       (file-directory-p "~/Documents/Development")
       )
  (load-file "~/.emacs.d/private/drbr/layers/development.el")
  )

(when (or
       ;;(executable-find "ansible")
       (file-directory-p "~/Src")
       (file-directory-p "~/Documents/Development")
       (file-directory-p org-directory)
       (file-directory-p "~/.ansible/collections/ansible_collections")
       (file-directory-p "~/.ansible/inventories")
       )
  (load-file "~/.emacs.d/private/drbr/layers/vcs.el")
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
