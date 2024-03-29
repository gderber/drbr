;;; funcs.el ---
;;
;; Filename: funcs.el
;; Description:
;; Author: Geoff S Derber
;; Maintainer:
;; Created: Mon Jun 10 18:41:17 2019 (-0400)
;; Version:
;; Package-Requires: ()
;; Last-Updated: Mon Jun 10 18:48:10 2019 (-0400)
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

(defun drbr/insert-date (prefix)
;;  "Insert the current date. With prefix-argument, use ISO format. With
;;   two prefix arguments, write out the day and month name."
  (interactive "P")
  (let ((format (cond
     ((not prefix) "%d.%m.%Y")
     ((equal prefix '(4)) "%Y-%m-%d")
     ((equal prefix '(16)) "%A, %d. %B %Y")))
  (system-time-locale "de_DE"))
    (insert (format-time-string format))))

(defun drbr/fix-comments ()
  "Move through the entire buffer searching for comments that begin with
    \"//\" and fill them appropriately.  That means if comments start too
    close to the end of line (20 less than the fill-column) move the
    entire comment on a line by itself."
  (interactive)
  (save-excursion
    (beginning-of-buffer)
    (while (search-forward "//")
      (lisp-indent-for-comment)
      ;; when the comment is deemed to be too close to the end of the
      ;; line, yank it and put it on the previous line before filling
      (while (< (- fill-column 20) (- (current-column) 3))
       (search-backward "//")
       (kill-line)
       (beginning-of-line)
       (yank)
       (insert "\n"))
      ;; now fill the lines that are too long
      (if (and (not (end-of-line))
         (< fill-column (current-column)))
    (c-fill-paragraph)))))

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
        (insert fortune)
      fortune)))


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
