;;; layers.el ---
;;
;; Filename: layers.el
;; Description:
;; Author: Geoff S Derber
;; Maintainer:
;; Created: Mon Jun 10 18:41:03 2019 (-0400)
;; Version:
;; Package-Requires: ()
;; Last-Updated: Mon Jun 10 18:41:04 2019 (-0400)
;;           By: Geoff S Derber
;;     Update #: 1
;; URL:
;; Doc URL:
;; Keywords:
;; Compatibility:
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Change Log:
;;
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or (at
;; your option) any later version.
;;
;; This program is distributed in the hope that it will be useful, but
;; WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <https://www.gnu.org/licenses/>.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

(configuration-layer/declare-layers
 '(
   ;; 1. Personal Layers
   drbr-git

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
   helm
   ;; ivy
   ;; templates

   ;; 5. Email
   gnus

   ;; 6. Emacs
   ;;better-defaults
   ;;helpful
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
   treemacs

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
   ;; Moved to drbr-git layer

   ;; 16. Readers
   ;;elfeed

   ;; 17.

   ;; 18. Source Control
   ;; Moved to drbr-git layer

   ;; 19. Spacemacs

   ;; 20. Tagging
   ;;cscope
   ;; TODO Fix errors (possbily recompile global from source)
   gtags

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
   ;;systemd
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
(when (display-graphic-p)
  (configuration-layer/declare-layers
   '(
     emoji
     games
     xkcd
     epub
     pdf
     speed-reading

     ;; TODO This really should be enabled based on if org files exist.
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

(when (executable-find "ansible")
  (configuration-layer/declare-layers
   '(
     ansible
     )))

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
