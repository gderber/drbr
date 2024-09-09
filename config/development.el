;; Development Environment
(setq-default git-magit-status-fullscreen nil
              global-git-commit-mode t
              auth-sources '("~/.authinfo.gpg")
              magit-repository-directories
              '(
                ("~/.emacs.d" . 0)
                ("~/.emacs.d/private/drbr" . 0)
                )
              forge-topic-list-limit '(100 . 0))


(when (file-directory-p "~/Documents/Development/")
  (add-to-list 'magit-repository-directories '("~/Documents/Development" . 2))
  )
