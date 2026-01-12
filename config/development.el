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

              ;; ================================================
              ;; LSP
              ;; ===============================================
              ;;
              ;; Logging
              ;; lsp-log-io nil
              ;;
              ;; PyLSP
              ;; lsp-pylsp-plugins-rope-autoimport-enabled 't
              ;; lsp-clients-pylsp-library-directories
              ;; lsp-pylsp-configuration-sources ["pylsp-mypy"]
              ;; lsp-pylsp-plugins-black-enabled nil
              ;; lsp-pylsp-plugins-autopep8-enabled nil
              ;; lsp-pylsp-plugins-flake8-config nil
              ;; lsp-pylsp-plugins-flake8-enabled 't
              ;; lsp-pylsp-plugins-flake8-exclude nil
              ;; lsp-pylsp-plugins-flake8-filename nil
              ;; lsp-pylsp-plugins-flake8-hang-closing nil
              ;; lsp-pylsp-plugins-flake8-ignore nil
              ;; lsp-pylsp-plugins-flake8-max-line-length fill-column
              ;; lsp-pylsp-plugins-flake8-select nil
              ;; lsp-pylsp-plugins-isort-enabled 't
              ;; lsp-pylsp-plugins-jedi-completion-enabled t
              ;; lsp-pylsp-plugins-jedi-completion-fuzzy nil
              ;; lsp-pylsp-plugins-pylint-enabled 't
              ;; lsp-pylsp-plugins-yapf-enabled 't
              )


(when (file-directory-p "~/Documents/Development/")
  (add-to-list 'magit-repository-directories '("~/Documents/Development" . 2))
  )
