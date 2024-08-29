;;  Keybindings
(spacemacs/declare-prefix "id" "Date/Time")

(spacemacs/set-leader-keys
  "idi" 'drbr/insert-date-iso
  "idl" 'drbr/insert-date-long
  "cR" 'comment-or-uncomment-region
  "xwC" 'capitalize-word
  )

;; (when (file-directory-p org-directory)
;;   (LOAD-FILE "~/.EMACS.d/private/drbr/keybindings/org.el")
;;   )
