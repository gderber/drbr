;;
(when (file-directory-p "~/Documents/Development")
  (configuration-layer/declare-layers
   '(
     ;; 15. Programming Languages
     (c-c++ :variables
            c-c++adopt-subprojects t
            c-c++-enable-organize-includes-on-save t
            c-c++backend 'lsp-clangd)
     csv
     graphviz
     html
     markdown
     lua
     ;; php
     (python :variables
             importmagic-python-interpreter "python3"
             python-auto-set-local-pyvenv-virtualenv nil
             python-backend 'lsp
             python-fill-column fill-column
             ;; python-formatter 'yapf
             python-format-on-save t
             python-sort-imports-on-save t
             python-spacemacs-indent-guess nil
             )
     ;; rust
     (shell-scripts :variables
                    shell-scripts-backend 'lsp
                    shell-scripts-format-on-save t)
     (sql :variables
          sql-capitalize-keywords t)
     toml
     ;; windows-scripts
     (yaml :variables
           :variables yaml-enable-lsp t)

     ;; 20. Tagging
     ;;cscope
     (gtags :variables
            gtags-enable-by-default nil)

     ;; 22. Tools
     (cmake :variables
            cmake-enable-cmake-ide-support t)
     debug
     (lsp :variables
          ;;lsp-log-io t
          lsp-lens-enable t
          ;; ;; lsp-modeline-diagnostics-scope variable is obsolete
          ;;lsp-modeline-code-actions-segments '(icon name count)
          lsp-headerline-breadcrumb-segments t
          lsp-headerline-breadcrumb-segments '(path-up-to-project file symbols)
          )
     )


   )
  )
