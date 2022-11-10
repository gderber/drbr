;;; config.el ---
;;
;; Filename: config.el
;; Description:
;; Author: Geoff S Derber
;; Maintainer:
;; Created: Mon Jun 10 18:42:03 2019 (-0400)
;; Version:
;; Package-Requires: ()
;; Last-Updated: Mon Jun 10 18:42:09 2019 (-0400)
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
;; Provide a useful error trace if loading this monster fails.
(setq debug-on-error t)


; Unfortunately there's no common way to bind mouse events in the
; different emacsen.
;;(if (boundp 'running-xemacs)
;;    (global-set-key [(shift button2)]        ;<shift>-mouse2 to load
;;      'browse-url-at-mouse)                  ;url at point into
;;               ;netscape.
;;  ;(else GNU Emacs
;;  (global-set-key [(shift down-mouse-2)]     ;<shift>-mouse2 to load
;;    'browse-url-at-mouse)                    ;url at point into netscape.
;; )

;;;;; Global Settings ;;;;;
(savehist-mode 1)
;; Miscellaneous settings
;; All settings clicked in the Options menu are saved here by Emacs.
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
;; '(column-number-mode t)
 '(cookie-file "/usr/share/games/fortunes/startrek")
;; '(line-number-mode t)
 '(display-battery-mode t)
 '(display-time-24hr-format t)
 '(display-time-day-and-date t)
 '(display-time-default-load-average t)
;; '(display-time-mail-file (quote none))
 '(display-time-mode t)
 '(size-indication-mode t) ;; Show file size
 ;;'(indicate-buffer-boundaries (quote ((t . right) (top . left))))
 ;;'(inhibit-startup-screen t)
 ;;'(indicate-empty-lines t)
 ;;'(save-place t nil (saveplace))
 '(scroll-bar-mode (quote right))
 ;;'(show-paren-mode t) ;; Show matched Parens
 ;;'(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 ;;'(uniquify-buffer-name-style (quote forward) nil (uniquify))
 ;; Backup Settings
 ;;'(backup-directory-alist '(("." . "~/.emacs.d/backups")))
 ;;'(delete-old-versions -1)
 ;;'(version-control t)
 ;;'(vc-make-backup-files t)
 ;;'(auto-save-file-name-transforms '((".*" "~/.emacs.d/auto-save-list/" t)))
 ;; http://www.wisdomandwonder.com/wp-content/uploads/2014/03/C3F.html
 ;;'(savehist-file "~/.emacs.d/savehist")
 ;;'(history-length t)
 ;;'(history-delete-duplicates t)
 ;;'(savehist-save-minibuffer-history 1)
 ;;'(savehist-additional-variables
 ;;  '(kill-ring
 ;;    search-ring
 ;;    regexp-search-ring))
;; '(package-selected-packages
;;   (quote
;;    (which-key undo-tree hydra evil-unimpaired async aggressive-indent adaptive-wrap ace-window)))
  ;; End Sentences with 2 spaces
 ;;'(sentence-end-double-space t)


 ;; ORG
 ;; Files and Directories
 '(org-directory "~/Documents/Org/")
 ;;'(org-journal-date-format "%e %b %Y (%A)")
 ;;'(org-journal-time-format "")
 '(org-agenda-files (list org-directory))
 '(org-default-notes-file "~/Documents/Org/notes.org")
 '(org-archive-location "~/Documents/Org/archive.org")
 ;; Agenda Settings
 '(org-agenda-ndays 14)
 '(org-agenda-show-all-dates t)
 '(org-agenda-start-on-weekday nil)
 '(org-agenda-include-diary t)
 '(org-agenda-skip-deadline-if-done t)
 '(org-agenda-skip-scheduled-if-done t)
 '(org-agenda-skip-timestamp-if-done t)
 '(org-reverse-note-order t)
 '(org-agenda-sorting-strategy '((agenda time-up ts-up habit-down priority-down category-keep)
                                 (todo priority-down category-keep)
                                 (tags priority-down category-keep)
                                 (search category-keep)))
 ;; Logging / Habit Tracking
 '(org-log-into-drawer "LOGBOOK")
 '(org-log-done-with-time t)
 '(org-log-states-order-reversed t)
 '(org-log-redeadline t)
 '(org-log-reschedule '(time))
 '(org-log-redeadline '(time))
 '(org-fast-tag-selection-single-key (quote expert))
 '(org-use-fast-todo-selection t)
 '(org-treat-S-cursor-todo-selection-as-state-change nil)
 ;; Todo Settings
 '(org-enforce-todo-dependencies t)
 '(org-enforce-todo-checkbox-dependencies t)
 '(org-deadline-warning-days 14)
 ;; Prepare for export backends
 '(org-export-backends '(org latex icalendar html ascii))


)


;;(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
;; )

(setq-default fill-column 100)
;;(setq global-font-lock-mode t)             ; Enable syntax-highlighting
;;(setq font-lock-maximum-decoration t)
(setq indent-tabs-mode nil)                ; Use spaces instead of tabs for indentation.
(setq tab-width 4)                         ; Set tab width to 4
(setq default-tab-width 4)                 ; Required by graphviz-dot-mode
(setq transient-mark-mode t)               ;where's that selection?
(setq mouse-yank-at-point t)               ;paste at point NOT at cursor
;;(setq next-line-add-newlines nil)          ;no newlines if I cursor past EOF.
(setq require-final-newline 't)            ; Always newline at end of file
;;(setq minibuffer-max-depth nil)            ;enable multiple minibuffers:
 ;I didn't understand this for a long time - if you don't set this,
 ;you can't do things like search the minibuffer history with M-s
 ;(cause that requires another minibuffer)
(setq browse-url-browser-function          ;call netscape on URLs.
      (quote browse-url-firefox))


;; Treemacs settings:
;;(setq-default dotspacemacs-configuration-layers '(
;;  (treemacs :variables treemacs-use-follow-mode t)))

;; Neotree settings:
;; (when (display-graphic-p)
;;   (setq neo-theme icons)
;;   (setq neo-vc-integration face)
;;   )

;;(setq browse-url-new-window-p t)           ;open a fresh netscape window.
;;(if (boundp 'running-xemacs)
;;    (progn
;;      ;make the modeline time display show up on dark background.
;;      (setq display-time-display-time-foreground "tomato")
;;      ;I put my mail in a non-standard location.
;;      (setq display-time-mail-file (expand-file-name "~/nsmail/Inbox"))
;;      ; Make sure delete key always deletes forward in cc mode.
;;      (setq delete-key-deletes-forward t)
;;      )
;;)


;; ORG MODE
;;(setq org-agenda-files (list "~/Documents/Org/work.org"
;;                             "~/Documents/Org/personal.org"))
;; Todo Options
(setq org-todo-state-tags-triggers
      '(("CANCELLED" ("CANCELLED" . t))
        ("WAITING" ("WAITING" . t))
        ("HOLD" ("WAITING") ("HOLD" . t))
        (done ("WAITING") ("HOLD"))
        ("TODO" ("WAITING") ("CANCELLED") ("HOLD"))
        ("NEXT" ("WAITING") ("CANCELLED") ("HOLD"))
        ("DONE" ("WAITING") ("CANCELLED") ("HOLD"))))

(setq org-todo-keywords
      '(;; Sequent for TODOs
        (sequence "TODO(t@/!)" "WAITING(w@/!)" "DELEGATED(d@/!)" "HOLD(h@/!)" "FEEDBACK(f@/!)" "VERIFY(v@/!)" "|" "DONE()" "DELEGATED()" "Cancelled()")
        ;; Sequence for Bugs
        (sequence "NEW(n!)" "CONFIRMED" "ASSIGNED" "IN PROGRESS" "|" "INVALID" "COMPLETE" "VERIFIED" "CLOSED")
        ;; Sequence for PURCHASES
        ;;(sequence "IDENTIFICATION(p@/!)" "RESEARCH(j@/!)" "PURCHASE()" "TRANSIT(u@/!)" | "RECEIVED()")
        ;; Sequence for 
        ;;(sequence "GIFT(h@/!)" "SELL(k@/!)" "LOANED(n@/!)" "|" "UNWANTED(a@/!)" "OWN(o@/!)" "GIFTED(g@/!)"  "SOLD(c@/!)" "DISCARDED(q@/!)")
        ;; Sequence for MULTIMEDIA
        ;;(sequence "CONSUME(r@/!)" "SUBSCRIBE(b@/!)" "CONSUMING(l@/!)" "SHARE(s@/!)" "|" "IGNORED(i@/!)" "REFERENCE(f@/!)")
        ;; Sequence for EVENTS
        (sequence "VISIT(v@/!)" "|" "DIDNOTGO(z@/!)" "MEETING(m@/!)" "VISITED(y@/!)")))

;; Setting Colours (faces) for todo states to give clearer view of work 
(setq org-todo-keyword-faces
      '(("TODO" :foreground "red" :weight bold)
        ("NEXT" :foreground "blue" :weight bold)
        ("DONE" :foreground "forest green" :weight bold)
        ("WAITING" :foreground "orange" :weight bold)

        ("HOLD" :foreground "magenta" :weight bold)
        ("CANCELLED" :foreground "forest green" :weight bold)
        ("MEETING" :foreground "forest green" :weight bold)
        ("PHONE" :foreground "forest green" :weight bold)))
;;


;; (setq org-super-agenda-groups
;;       '( ;; Each group has an implicit boolean OR operator between its selectors.
;;         (:name "Today"          ; Optionally specify section name
;;                :time-grid t     ; Items that appear on the time grid
;;                )
;;         (:name "Important" :priority "A")
;;         (:priority<= "B"
;;                      ;; Show this section after "Today" and "Important", because
;;                      ;; their order is unspecified, defaulting to 0. Sections
;;                      ;; are displayed lowest-number-first.
;;                      :order 1)
;;         (:name "Habits" :habit t :order 2)
;;         (:name "Shopping" :tag "Besorgung" :order 3)
;;         ;; Boolean AND group matches items that match all subgroups
;;         ;;  :and (:tag "shopping" :tag "@town")
;;         ;; Multiple args given in list with implicit OR
;;         ;;  :tag ("food" "dinner"))
;;         ;;  :habit t
;;         ;;  :tag "personal")
;;         (:name "Started" :todo "STARTED" :order 5)
;;         ;;(:name "Space-related (non-moon-or-planet-related)"
;;         ;;       ;; Regexps match case-insensitively on the entire entry
;;         ;;       :and (:regexp ("space" "NASA")
;;         ;;                     ;; Boolean NOT also has implicit OR between selectors
;;         ;;                     :not (:regexp "moon" :tag "planet")))
;;         (:name "BWG" :tag "@BWG" :order 7)
;;         (:todo "WAITING" :order 9)    ; Set order of this section
;;         (:name "read" :tag "2read" :order 15)
;;         ;; Groups supply their own section names when none are given
;;         (:todo ("SOMEDAY" "WATCHING")
;;                ;; Show this group at the end of the agenda (since it has the
;;                ;; highest number). If you specified this group last, items
;;                ;; with these todo keywords that e.g. have priority A would be
;;                ;; displayed in that group instead, because items are grouped
;;                ;; out in the order the groups are listed.
;;                :order 25)
;;         (:name "reward"
;;                :tag ("reward" "lp")
;;                :order 100)
;;         ;; After the last group, the agenda will display items that didn't
;;         ;; match any of these groups, with the default order position of 99
;;                  ))

;; Hooks
(with-eval-after-load 'org
  (add-hook 'org-after-todo-statistics-hook 'org-summary-todo)


  (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
  (add-to-list 'auto-mode-alist '("\\.org.gpg$" . org-mode))
  (add-to-list 'auto-mode-alist '("\\.ref$" . org-mode))
  (add-to-list 'auto-mode-alist '("\\.ref.gpg$" . org-mode))
  (add-to-list 'auto-mode-alist '("\\.nnotes$" . org-mode))
  (add-to-list 'auto-mode-alist '("\\.nnotes.gpg$" . org-mode))
  )

;; (with-eval-after-load 'org-agenda
;;   (require 'org-projectile)
;;   (mapcar '(lambda (file)
;;              (when (file-exists-p file)
;;                (push file org-agenda-files)))
;;           (org-projectile-todo-files)))



;;(setq-default dotspacemacs-configuration-layers '(
;; (keyboard-layout :variables kl-layout 'dvorak)))

;; Don't truncate lines in vertically split windows (suggested by Jeff).
;;(setq truncate-partial-width-windows nil)

;; uptimes
(setq emacs-load-start-time (current-time))

;;(add-hook 'font-lock-mode-hook 'hc-highlight-tabs)
;;(add-hook 'font-lock-mode-hook 'hc-highlight-hard-spaces)
;;(add-hook 'font-lock-mode-hook 'hc-highlight-trailing-whitespace)
;;(add-hook 'after-change-major-mode-hook 'fci-mode)

;; Add hooks for various modes
;; (with-eval-after-load 'cc-mode
;;   (add-hook 'cc-mode-hook 'fci-mode))
;; (with-eval-after-load 'shell-mode
;;   (add-hook 'shell-mode-hook 'fci-mode))
;; (with-eval-after-load 'conf-mode
;;   (add-hook 'conf-mode-hook 'fci-mode))
;; (with-eval-after-load 'python-mode
;;   (add-hook 'python-mode-hook 'fci-mode))
;; (with-eval-after-load 'yaml-mode
;;   (add-hook 'yaml-mode-hook 'fci-mode))
;; (with-eval-after-load 'emacs-lisp-mode
;;   (add-hook 'emacs-lisp-mode-hook 'fci-mode))
;; (with-eval-after-load 'php-mode-hook
;;   (add-hook 'php-mode-hook 'fci-mode))
;; (with-eval-after-load 'html-mode
;;   (add-hook 'html-mode-hook 'fci-mode))
;; (with-eval-after-load 'nxml-mode
;;   (add-hook 'nxml-mode-hook 'fci-mode))
;; (with-eval-after-load 'graphviz-dot-mode
;;   (add-hook 'graphviz-dot-mode-hook 'fci-mode))

;; Header
;;(autoload 'auto-update-file-header "header2")
;;(add-hook 'write-file-hooks 'auto-update-file-header)
;; To have Emacs add a file header whenever you create a new file in
;; some mode, put this in your init file (~/.emacs):
;;(autoload 'auto-make-header "header2")
;;(add-hook 'emacs-lisp-mode-hook 'auto-make-header)
;;(add-hook 'c-mode-common-hook   'auto-make-header)

;;(elpy-enable)
;;(require 'epa-file)
;;(epa-file-enable)

;; Fix for broken daemon mode
;;(defun signal-restart-server ()
;;    "Handler for SIGUSR1 signal, to (re)start an emacs server.
;;
;;Can be tested from within emacs with:
;; (signal-process (emacs-pid) 'sigusr1)
;;
;;or from the command line with:
;;$ kill -USR1 <emacs-pid>
;;$ emacsclient -c
;;"
;;    (interactive)
;;    (server-force-delete)
;;    (server-start))
;;)
;;(define-key special-event-map [sigusr1] 'signal-restart-server)

;; Server Settings
(require 'server)
(unless (server-running-p)
  (server-start))

;;(add-to-list 'auto-mode-alist '(".*_EDITMSG\\'" . log-entry-mode))
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'auto-mode-alist '("ssh*_config" . conf-mode))
(add-to-list 'auto-mode-alist '("screenrc" . conf-mode))
(add-to-list 'auto-mode-alist '("\\.cnf\\'" . conf-mode))
(add-to-list 'auto-mode-alist '(".profile" . shell-script-mode))
(add-to-list 'auto-mode-alist '("profile" . shell-script-mode))


;;
(setq-default git-magit-status-fullscreen t)
(setq auth-sources '("~/.authinfo.gpg"))

(setq magit-repository-directories
      '(("~/Documents/Development/" . 2) ("~/Documents/Org" . 2)))

(setq  forge-topic-list-limit '(100 . 0))



;; Graphic UI Environment
(when (display-graphic-p)
  ;; Sudoku Settings
  (setq sudoku-level 'medium)
  (setq sudoku-style 'unicode)
  (setq sudoku-autoinsert-mode nil)

  )

;; Ansible Environment
(when (executable-find "ansible")
  (when (file-exists-p "~/.vault_pass.txt")
    (setq ansible-vault-password-file "~/.vault_pass.txt")
    (add-hook 'ansible-vault-mode-hook 'fci-mode)))

;; Custom Layouts
(spacemacs|define-custom-layout "@Drbr-HomeAssistantConfig"
  :binding "h"
  :body
  (find-file "~/Documents/Development/homeassistant_config/configuration.yaml")
  (spacemacs/treemacs-project-toggle)
  (winum-select-window-1)
  (display-fill-column-indicator-mode)
  (split-window-right)
  (magit-status-here)
  )

(spacemacs|define-custom-layout "@Drbr-Ansible"
  :binding "a"
  :body
  (spacemacs/treemacs-project-toggle)
  (winum-select-window-1)
  (display-fill-column-indicator-mode)
  (split-window-right)
  (magit-status-here)
  (split-window-below)
  (winum-select-window-3)
  (vterm)
  )

(spacemacs|define-custom-layout "@Drbr-AnsibleInventories"
  :binding "A"
  :body
  (spacemacs/treemacs-project-toggle)
  (winum-select-window-1)
  (display-fill-column-indicator-mode)
  (split-window-right)
  (magit-status-here)
  (split-window-below)
  (winum-select-window-3)
  (vterm)
  )

(spacemacs|define-custom-layout "@Drbr-Project"
  :binding "p"
  :body
  (spacemacs/treemacs-project-toggle)
  (winum-select-window-1)
  (display-fill-column-indicator-mode)
  (split-window-right)
  (magit-status-here)
  (split-window-below)
  (winum-select-window-3)
  (vterm)
  )

(spacemacs|define-custom-layout "@Drbr-CPP-Project"
  :binding "c"
  :body
  (spacemacs/treemacs-project-toggle)
  (winum-select-window-1)
  (display-fill-column-indicator-mode)
  (split-window-right)
  (magit-status-here)
  (split-window-below)
  (winum-select-window-3)
  (vterm)
  )

(spacemacs|define-custom-layout "@Drbr-Org"
  :binding "O"
  :body
  (let ((agenda-files (org-agenda-files)))
    (if agenda-files
        (find-file (first agenda-files))
      (user-error "Error: No agenda files configured, nothing to display.")))
  (split-window-right)
  (org-agenda-list 14)
  (winum-select-window-1))

(spacemacs|define-custom-layout "@Drbr-Python-Project"
  :binding "P"
  :body
  (spacemacs/treemacs-project-toggle)
  (winum-select-window-1)
  (display-fill-column-indicator-mode)
  (split-window-right)
  (magit-status-here)
  (split-window-below)
  (winum-select-window-3)
  (vterm)
  )

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; config.el ends here
