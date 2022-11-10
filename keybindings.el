;;; keybindings.el --- 
;; 
;; Filename: keybindings.el
;; Description: 
;; Author: Geoff S Derber
;; Maintainer: 
;; Created: Mon Jun 10 18:42:15 2019 (-0400)
;; Version: 
;; Package-Requires: ()
;; Last-Updated: Mon Jun 10 18:42:16 2019 (-0400)
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

;; ; Now the functions are defined, we can assign them to keys.
;; (global-set-key (kbd "C-c d") 'insert-date)
;; ;; keyboard mods not specific to any mode.
;; ;;  note the use of kbd function to make these work in emacs or
;; ;;  xemacs.
;; ;;(global-set-key (kbd "C-h") 'delete-backward-char)   ;backspace, not help!
;; (global-set-key (kbd "C-c g") 'goto-line)
;; (global-set-key (kbd "<f2>") 'other-window)       ;convenient shortcuts.
;; (global-set-key (kbd "<f3>") 'kill-this-buffer)
;; (global-set-key (kbd "<f4>") 'speedbar-get-focus) ;jump to the speedbar.

;; ;;(global-unset-key (kbd "ESC ESC"))         ;eval-expr gets in my way.
;; (global-set-key (kbd "C-`") 'capitalize-word)      ;I want c-~, but
;;       ;that's too
;;                                                    ;hard to type.

;; ;; Duplicates of some of the keys above so everything works
;; ;; properly on remote xterms.
;; ;;(global-set-key "\e[12~" 'other-window)
;; ;;(global-set-key "\e[13~" 'kill-this-buffer)

;; ;; Keys that Jeff likes - maybe I'll try them too.
;; ;;(global-set-key (kbd "C-x C-k") 'compile)
;; (global-set-key (kbd "C-x C-j") 'fill-paragraph)

;; ORG MODE

;; (setq org-agenda-custom-commands
;;       '(("d" todo "DELEGATED" nil)
;;         ("c" todo "DONE|DEFERRED|CANCELLED" nil)
;;         ("w" todo "WAITING" nil)
;;         ("f" agenda "" ((org-agenda-ndays 14)))
;;         ("W" agenda "" ((org-agenda-ndays 21)))
;;         ("A" agenda ""
;;          ((org-agenda-skip-function
;;            (lambda nil
;;              (org-agenda-skip-entry-if (quote notregexp) "\\=.*\\[#A\\]")))
;;           (org-agenda-ndays 1)
;;           (org-agenda-overriding-header "Today's Priority #A tasks: ")))
;;         ("u" alltodo ""
;;          ((org-agenda-skip-function
;;            (lambda nil
;;              (org-agenda-skip-entry-if (quote scheduled) (quote deadline)
;;                                        (quote regexp) "\n]+>")))
;;           (org-agenda-overriding-header "Unscheduled TODO entries: ")))))

;;(global-set-key "\C-cl" 'org-store-link)
;;(global-set-key "\C-ca" 'org-agenda)
;;(global-set-key "\C-cc" 'org-capture)
;;(global-set-key "\C-cb" 'org-switchb)
;;(global-set-key (kbd "<f12>") 'org-agenda)
;;(global-set-key (kbd "<f5>") 'bh/org-todo)
;;(global-set-key (kbd "<S-f5>") 'bh/widen)
;;(global-set-key (kbd "<f7>") 'bh/set-truncate-lines)
;;(global-set-key (kbd "<f8>") 'org-cycle-agenda-files)
;;(global-set-key (kbd "<f9> <f9>") 'bh/show-org-agenda)
;;(global-set-key (kbd "<f9> b") 'bbdb)
;;(global-set-key (kbd "<f9> c") 'calendar)
;;(global-set-key (kbd "<f9> f") 'boxquote-insert-file)
;;(global-set-key (kbd "<f9> g") 'gnus)
;;(global-set-key (kbd "<f9> h") 'bh/hide-other)
;;(global-set-key (kbd "<f9> n") 'bh/toggle-next-task-display)
;;(global-set-key (kbd "<f9> I") 'bh/punch-in)
;;(global-set-key (kbd "<f9> O") 'bh/punch-out)
;;(global-set-key (kbd "<f9> o") 'bh/make-org-scratch)
;;(global-set-key (kbd "<f9> r") 'boxquote-region)
;;(global-set-key (kbd "<f9> s") 'bh/switch-to-scratch)
;;(global-set-key (kbd "<f9> t") 'bh/insert-inactive-timestamp)
;;(global-set-key (kbd "<f9> T") 'bh/toggle-insert-inactive-timestamp)
;;(global-set-key (kbd "<f9> v") 'visible-mode)
;;(global-set-key (kbd "<f9> l") 'org-toggle-link-display)
;;(global-set-key (kbd "<f9> SPC") 'bh/clock-in-last-task)
;;(global-set-key (kbd "C-<f9>") 'previous-buffer)
;;(global-set-key (kbd "M-<f9>") 'org-toggle-inline-images)
;;(global-set-key (kbd "C-x n r") 'narrow-to-region)
;;(global-set-key (kbd "C-<f10>") 'next-buffer)
;;(global-set-key (kbd "<f11>") 'org-clock-goto)
;;(global-set-key (kbd "C-<f11>") 'org-clock-in)
;;(global-set-key (kbd "C-s-<f12>") 'bh/save-then-publish)
;;(global-set-key (kbd "C-c c") 'org-capture)



;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; keybindings.el ends here
