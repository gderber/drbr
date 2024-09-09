;; ORG
(with-eval-after-load 'org
  (setq-default  org-agenda-files (list org-directory)
                 org-agenda-ndays 14)
  )

;; Layout
(spacemacs|define-custom-layout "@Drbr-Org"
  :binding "O"
  :body
  (find-file (first org-agenda-files))
  (treemacs)
  (treemacs-display-current-project-exclusively)
  (winum-select-window-1)
  (split-window-right)
  (org-agenda-list 14)
  (winum-select-window-1)
  )


;; ;; Files and Directories

;; '(org-archive-location "~/Documents/Org/archive.org")
;; ;; Agenda Settings
;; '()
;; '(org-agenda-show-all-dates t)
;; '(org-agenda-start-on-weekday nil)
;; '(org-agenda-include-diary t)
;; '(org-agenda-skip-deadline-if-done t)
;; '(org-agenda-skip-scheduled-if-done t)
;; '(org-agenda-skip-timestamp-if-done t)
;; '(org-reverse-note-order t)
;; '(org-agenda-sorting-strategy '((agenda time-up ts-up habit-down priority-down category-keep)
;;                                 (todo priority-down category-keep)
;;                                 (tags priority-down category-keep)
;;                                 (search category-keep)))
;; ;; Logging / Habit Tracking
;; '(org-log-into-drawer "LOGBOOK")
;; '(org-log-done-with-time t)
;; '(org-log-states-order-reversed t)
;; '(org-log-redeadline t)
;; '(org-log-reschedule '(time))
;; '(org-log-redeadline '(time))
;; '(org-fast-tag-selection-single-key (quote expert))
;; '(org-use-fast-todo-selection t)
;; '(org-treat-S-cursor-todo-selection-as-state-change nil)
;; ;; Todo Settings
;; '(org-enforce-todo-dependencies t)
;; '(org-enforce-todo-checkbox-dependencies t)
;; '(org-deadline-warning-days 14)
;; ;; Prepare for export backends
;; '(org-export-backends '(org latex icalendar html ascii))
;;)

;; Org Mode

;; ORG MODE
;;(setq org-agenda-files (list "~/Documents/Org/work.org"
;;                             "~/Documents/Org/personal.org"))
;; Todo Options
;; (setq org-todo-state-tags-triggers
;;       '(("CANCELLED" ("CANCELLED" . t))
;;         ("WAITING" ("WAITING" . t))
;;         ("HOLD" ("WAITING") ("HOLD" . t))
;;         (done ("WAITING") ("HOLD"))
;;         ("TODO" ("WAITING") ("CANCELLED") ("HOLD"))
;;         ("NEXT" ("WAITING") ("CANCELLED") ("HOLD"))
;;         ("DONE" ("WAITING") ("CANCELLED") ("HOLD"))))

;; (setq org-todo-keywords
;;       '(;; Sequent for TODOs
;;         (sequence "TODO(t@/!)" "WAITING(w@/!)" "DELEGATED(d@/!)" "HOLD(h@/!)" "FEEDBACK(f@/!)" "VERIFY(v@/!)" "|" "DONE()" "DELEGATED()" "Cancelled()")
;;         ;; Sequence for Bugs
;;         (sequence "NEW(n!)" "CONFIRMED" "ASSIGNED" "IN PROGRESS" "|" "INVALID" "COMPLETE" "VERIFIED" "CLOSED")
;;         ;; Sequence for PURCHASES
;;         ;;(sequence "IDENTIFICATION(p@/!)" "RESEARCH(j@/!)" "PURCHASE()" "TRANSIT(u@/!)" | "RECEIVED()")
;;         ;; Sequence for
;;         ;;(sequence "GIFT(h@/!)" "SELL(k@/!)" "LOANED(n@/!)" "|" "UNWANTED(a@/!)" "OWN(o@/!)" "GIFTED(g@/!)"  "SOLD(c@/!)" "DISCARDED(q@/!)")
;;         ;; Sequence for MULTIMEDIA
;;         ;;(sequence "CONSUME(r@/!)" "SUBSCRIBE(b@/!)" "CONSUMING(l@/!)" "SHARE(s@/!)" "|" "IGNORED(i@/!)" "REFERENCE(f@/!)")
;;         ;; Sequence for EVENTS
;;         (sequence "VISIT(v@/!)" "|" "DIDNOTGO(z@/!)" "MEETING(m@/!)" "VISITED(y@/!)")))

;; ;; Setting Colours (faces) for todo states to give clearer view of work
;; (setq org-todo-keyword-faces
;;       '(("TODO" :foreground "red" :weight bold)
;;         ("NEXT" :foreground "blue" :weight bold)
;;         ("DONE" :foreground "forest green" :weight bold)
;;         ("WAITING" :foreground "orange" :weight bold)

;;         ("HOLD" :foreground "magenta" :weight bold)
;;         ("CANCELLED" :foreground "forest green" :weight bold)
;;         ("MEETING" :foreground "forest green" :weight bold)
;;         ("PHONE" :foreground "forest green" :weight bold)))
;; ;;


;; ;; (setq org-super-agenda-groups
;; ;;       '( ;; Each group has an implicit boolean OR operator between its selectors.
;; ;;         (:name "Today"          ; Optionally specify section name
;; ;;                :time-grid t     ; Items that appear on the time grid
;; ;;                )
;; ;;         (:name "Important" :priority "A")
;; ;;         (:priority<= "B"
;; ;;                      ;; Show this section after "Today" and "Important", because
;; ;;                      ;; their order is unspecified, defaulting to 0. Sections
;; ;;                      ;; are displayed lowest-number-first.
;; ;;                      :order 1)
;; ;;         (:name "Habits" :habit t :order 2)
;; ;;         (:name "Shopping" :tag "Besorgung" :order 3)
;; ;;         ;; Boolean AND group matches items that match all subgroups
;; ;;         ;;  :and (:tag "shopping" :tag "@town")
;; ;;         ;; Multiple args given in list with implicit OR
;; ;;         ;;  :tag ("food" "dinner"))
;; ;;         ;;  :habit t
;; ;;         ;;  :tag "personal")
;; ;;         (:name "Started" :todo "STARTED" :order 5)
;; ;;         ;;(:name "Space-related (non-moon-or-planet-related)"
;; ;;         ;;       ;; Regexps match case-insensitively on the entire entry
;; ;;         ;;       :and (:regexp ("space" "NASA")
;; ;;         ;;                     ;; Boolean NOT also has implicit OR between selectors
;; ;;         ;;                     :not (:regexp "moon" :tag "planet")))
;; ;;         (:name "BWG" :tag "@BWG" :order 7)
;; ;;         (:todo "WAITING" :order 9)    ; Set order of this section
;; ;;         (:name "read" :tag "2read" :order 15)
;; ;;         ;; Groups supply their own section names when none are given
;; ;;         (:todo ("SOMEDAY" "WATCHING")
;; ;;                ;; Show this group at the end of the agenda (since it has the
;; ;;                ;; highest number). If you specified this group last, items
;; ;;                ;; with these todo keywords that e.g. have priority A would be
;; ;;                ;; displayed in that group instead, because items are grouped
;; ;;                ;; out in the order the groups are listed.
;; ;;                :order 25)
;; ;;         (:name "reward"
;; ;;                :tag ("reward" "lp")
;; ;;                :order 100)
;; ;;         ;; After the last group, the agenda will display items that didn't
;; ;;         ;; match any of these groups, with the default order position of 99
;; ;;                  ))

;; ;; Hooks
;; (with-eval-after-load 'org
;;   (add-hook 'org-after-todo-statistics-hook 'org-summary-todo)


;;   (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;;   (add-to-list 'auto-mode-alist '("\\.org.gpg$" . org-mode))
;;   (add-to-list 'auto-mode-alist '("\\.ref$" . org-mode))
;;   (add-to-list 'auto-mode-alist '("\\.ref.gpg$" . org-mode))
;;   (add-to-list 'auto-mode-alist '("\\.nnotes$" . org-mode))
;;   (add-to-list 'auto-mode-alist '("\\.nnotes.gpg$" . org-mode))
;;   )

;; (with-eval-after-load 'org-agenda
;;   (require 'org-projectile)
;;   (mapcar '(lambda (file)
;;              (when (file-exists-p file)
;;                (push file org-agenda-files)))
;;           (org-projectile-todo-files)))
