(configuration-layer/declare-layers
 '(
   (org :variables
        org-directory "~/Documents/Org"
        org-enable-epub-support t
        org-enable-github-support t
        org-enable-hugo-support t
        org-enable-notifications t
        org-enable-org-brain-support t
        org-enable-org-journal-support t
        org-journal-date-format "%A, %B %d %Y"
        org-journal-date-prefix "#+TITLE: "
        org-journal-dir (expand-file-name ".journal" org-directory)
        org-journal-file-format "%Y-%m-%d"
        org-journal-time-format ""
        org-journal-time-prefix "* "
        org-projectile-file "TODOs.org"
        org-start-notification-daemon-on-startup t
        org-want-todo-bindings t
        )
   )
 )
