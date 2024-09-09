;; =================================================================================================
;;
;; Functions
;;
;; Filename: funcs.el
;; Description:
;; Author: G S Derber
;; URL:
;; Doc URL:
;; Keywords:
;; Compatibility:
;;
;; =================================================================================================
(defun drbr/project-layout-start (&optional layout-file)
  "Initializes an Project Layout"
  (interactive)
  (if layout-file
      (find-file layout-file))
  (treemacs)
  (treemacs-display-current-project-exclusively)
  (winum-select-window-1)
  (display-fill-column-indicator-mode)
  (split-window-right)
  (magit-status-here)
  (winum-select-window-1)
  )

(defun drbr/insert-date-iso ()
  (interactive)
  (insert (format-time-string "%Y-%m-%d"))
  )

(defun drbr/insert-date-long ()
  (interactive)
  (insert (format-time-string "%A, %B %d, %Y"))
  )

(defun drbr/fortune-signature (&optional file signature-separator)
  (interactive)
  (end-of-buffer)
  (if signature-separator
      (insert signature-separator)
    (insert "-- \n")
    )
  (if file
      (insert (fortune-to-signature file))
    (insert (fortune-to-signature))
    )
  )

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

;; (when (file-directory-p org-directory)
;;   (load-file "~/.emacs.d/private/drbr/funcs/org.el")
;;   )
