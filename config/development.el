;; Development Environment
(setq-default git-magit-status-fullscreen nil
              global-git-commit-mode t
              auth-sources '("~/.authinfo.gpg")
              magit-repository-directories
              '(
                ("~/.emacs.d" . 0)
                ("~/.emacs.d/private/drbr" . 0)
                )
              forge-topic-list-limit '(100 . 0)
              shell-scripts-mark-executable-after-save nil
              lsp-pylsp-plugins-pylint-enabled 't
              lsp-pylsp-plugins-yapf-enabled 't
              ;; lsp-pylsp-plugins-rope-autoimport-enabled 't
              lsp-pylsp-plugins-isort-enabled 't
              lsp-pylsp-plugins-flake8-enabled 't
              ;; lsp-pylsp-configuration-sources ["pylsp-mypy"]
              )


(when (file-directory-p "~/Documents/Development/")
  (add-to-list 'magit-repository-directories '("~/Documents/Development" . 2))
  )
