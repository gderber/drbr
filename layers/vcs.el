;; Version Control
(when (or
       ;;(executable-find "ansible")
       (file-directory-p "~/Documents/Development")
       (file-directory-p "~/Documents/Org")
       (file-directory-p "~/.ansible/collections/ansible_collections")
       (file-directory-p "~/.ansible/inventories")
       )
  (configuration-layer/declare-layers
   ;; 18. Source Control
   '(
     (git :variables
          git-enable-magit-gitflow-plugin t
          git-enable-magit-delta-plugin t
          git-enable-magit-todos-plugin t)
     (version-control :variables
                      version-control-diff-tool 'git-gutter
                      version-control-diff-side 'left
                      version-control-global-margin t)
     )
   )
  )
