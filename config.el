;; Provide a useful error trace if loading this monster fails.
(setq debug-on-error t)
;;(add-to-list 'load-path (expand-file-name "private/drbr"))

;;;;; Global Settings ;;;;;
(savehist-mode 1)
(setq-default ;;size-indication-mode t
 display-time-24hr-format 't
 display-time-day-and-date 't
 display-time-mode 't
 dotspacemacs-enable-server t
 dotspacemacs-persistent-server t
 fill-column 100
 scroll-bar-mode 'right
 fortune-file "/usr/share/games/fortunes/startrek"
 fortune-dir "/usr/share/games/fortunes"
 )

;; Supply a random fortune cookie as the *scratch* message.
(when (executable-find "fortune")
  (setq initial-scratch-message
        (with-temp-buffer
          (shell-command "fortune" t)
          (let ((comment-start ";;"))
            (comment-region (point-min) (point-max)))
          (concat (buffer-string) "\n"))))

;; Miscellaneous settings
;; All settings clicked in the Options menu are saved here by Emacs.
;;(custom-set-variables
;; custom-set-variables was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
;; '(column-number-mode t)
;; '(line-number-mode t)
;; '(display-battery-mode t)
;; '(display-time-default-load-average t)
;; '(display-time-mail-file (quote none))
;;'(indicate-buffer-boundaries (quote ((t . right) (top . left))))
;;'(inhibit-startup-screen t)
;;'(indicate-empty-lines t)
;;'(save-place t nil (saveplace))
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


;;(custom-set-faces
;; custom-set-faces was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
;; )

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

;; Don't truncate lines in vertically split windows (suggested by Jeff).
;;(setq truncate-partial-width-windows nil)

;; uptimes
(setq emacs-load-start-time (current-time))

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

;;(add-to-list 'auto-mode-alist '(".*_EDITMSG\\'" . log-entry-mode))
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-to-list 'auto-mode-alist '("ssh*_config" . conf-mode))
(add-to-list 'auto-mode-alist '("screenrc" . conf-mode))
(add-to-list 'auto-mode-alist '("\\.cnf\\'" . conf-mode))
(add-to-list 'auto-mode-alist '(".profile" . shell-script-mode))
(add-to-list 'auto-mode-alist '("profile" . shell-script-mode))


;; Development Environment
(setq-default git-magit-status-fullscreen nil)
(setq global-git-commit-mode t
      auth-sources '("~/.authinfo.gpg"))


(setq magit-repository-directories
      '(
        ("~/.emacs.d" . 0)
        ("~/.emacs.d/private/drbr" . 0)
        )
      )
;;(setq  forge-topic-list-limit '(100 . 0))

;; Graphic UI Environment
(when (display-graphic-p)
  ;; Sudoku Settings
  (setq sudoku-level 'medium)
  (setq sudoku-style 'unicode)
  (setq sudoku-autoinsert-mode nil)
  )

(when (file-directory-p "~/Documuents/Development")
  (load-file "~/.emacs.d/private/drbr/config/development.el")
  )

;; (when (file-directory-p org-directory)
;;   (load-file "~/.emacs.d/private/drbr/config/org.el")
;;   )

(when (or
       ;;(executable-find "ansible")
       (file-directory-p "~/.ansible/collections/ansible_collections")
       (file-directory-p "~/.ansible/inventories")
       )
  (load-file "~/.emacs.d/private/drbr/config/ansible.el")
  )

;; (load-file "~/.emacs.d/private/drbr/config/layouts.el")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; config.el ends here
