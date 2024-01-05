;; =================================================================================================
;;
;; funcs.el ---
;;
;; Filename: funcs.el
;; Description:
;; Author: Geoff S Derber
;; URL:
;; Doc URL:
;; Keywords:
;; Compatibility:
;;
;; =================================================================================================
(defun drbr/insert-date-iso ()
    (interactive)
    (insert (format-time-string "%Y-%m-%d")))

(defun drbr/insert-date-long ()
    (interactive)
    (insert (format-time-string "%A, %B %d, %Y")))

;; Supply random fortune cookie
(defun drbr/fortune-scratch-message()
  (interactive)
  (let ((fortune
         (when (executable-find "fortune")
           (with-temp-buffer
             (shell-command "fortune" t)
             (while (not (eobp))
               (insert ";;")
               (forward-line))
             (delete-trailing-whitespace (point-min) (point-max))
             (concat (buffer-tring) "\n")))))
    (if (called-interactivly-p 'any)
)))

(defun drbr/org-hide-other ()
  (interactive)
  (save-excursion
    (org-back-to-heading 'invisible-ok)
    (hide-other)
    (org-cycle)
    (org-cycle)
    (org-cycle)))

(defun drbr/org-set-truncate-lines ()
  "Toggle value of truncate-lines and refresh window display."
  (interactive)
  (setq truncate-lines (not truncate-lines))
  ;; now refresh window display (an idiom from simple.el):
  (save-excursion
    (set-window-start (selected-window)
                      (window-start (selected-window)))))

(defun drbr/org-make-org-scratch ()
  (interactive)
  (find-file "/tmp/publish/scratch.org")
  (gnus-make-directory "/tmp/publish"))

(defun drbr/org-switch-to-scratch ()
  (interactive)
  (switch-to-buffer "*scratch*"))

(defun drbr/org-summary-todo (n-done n-not-done)
  "Switch entry to DONE when all subentries are done, to TODO otherwise."
  (let (org-log-done org-log-states)   ; turn off logging
    (org-todo (if (= n-not-done 0) "DONE" "TODO"))))


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; funcs.el ends here
