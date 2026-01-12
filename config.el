;;;;; Global Settings ;;;;;
(setq-default
 ;; Provide a useful error trace if loading this monster fails.
 debug-on-error t

 display-time-24hr-format 't
 display-time-day-and-date 't
 display-time-mode 't
 dotspacemacs-enable-server t
 dotspacemacs-folding-method 'origami
 dotspacemacs-persistent-server t
 emacs-load-start-time (current-time)  ;; uptimes
 fill-column 100
 require-final-newline 't ;; Always newline at end of file
 scroll-bar-mode 'right
 sentence-end-double-space t ;; End sentences with two spaces

 ;; Layouts
 ;; Restrict SPC-TAB to the current layout's buffers
 spacemacs-layouts-restrict-spc-tab t
 persp-autokill-buffer-on-remove 'kill-weak

 ;; Fix issue with daemon mode screwing up window numbering with multiple clients
 winum-scope 'frame-local
 )

;; (savehist-mode 1)

;; Miscellaneous settings
;; All settings clicked in the Options menu are saved here by Emacs.
;;(custom-set-variables
;; custom-set-variables was added by Custom.
;; If you edit it by hand, you could mess it up, so be careful.
;; Your init file should contain only one such instance.
;; If there is more than one, they won't work right.
;; '(column-number-mode t)
;; '(display-time-default-load-average t)
;; '(display-time-mail-file (quote none))
;;'(indicate-buffer-boundaries (quote ((t . right) (top . left))))
;;'(inhibit-startup-screen t)
;;'(indicate-empty-lines t)
;;'(save-place t nil (saveplace))
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
;;


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


(add-to-list 'auto-mode-alist '("ssh*_config" . conf-mode))
(add-to-list 'auto-mode-alist '("screenrc" . conf-mode))
(add-to-list 'auto-mode-alist '("\\.cnf\\'" . conf-mode))

;; Graphic UI Environment
(when (display-graphic-p)
  ;; Sudoku Settings
  (setq-default
   sudoku-level 'medium
   sudoku-style 'unicode
   sudoku-autoinsert-mode nil

   ;; This sounds more fun than it really is.
   ;;colors-enable-nyan-cat-progress-bar t
   )
  )

(load-file "~/.emacs.d/private/drbr/config/development.el")
(load-file "~/.emacs.d/private/drbr/config/fortune.el")

(when (file-directory-p org-directory)
  (load-file "~/.emacs.d/private/drbr/config/org.el")
  )

(when (or
       ;;(executable-find "ansible")
       (file-directory-p "~/.ansible/collections/ansible_collections")
       (file-directory-p "~/.ansible/inventories")
       )
  (load-file "~/.emacs.d/private/drbr/config/ansible.el")
  )

(load-file "~/.emacs.d/private/drbr/config/layouts.el")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; config.el ends here
