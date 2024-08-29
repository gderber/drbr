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
(defun drbr/project-layout ()
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

;; (when (file-directory-p org-directory)
;;   (load-file "~/.emacs.d/private/drbr/funcs/org.el")
;;   )
