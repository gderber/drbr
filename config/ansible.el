;; Ansible Specific Configuration
(when (file-directory-p "~/.ansible/inventories")
  (add-to-list 'magit-repository-directories '("~/.ansible/inventories" . 0))
  )

(when (file-directory-p "~/.ansible/collections/ansible_collections")
  (add-to-list 'magit-repository-directories '("~/.ansible/collections/ansible_collections" . 2))
  )
