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
             python-backend 'lsp
             python-test-runner 'pytest
             python-formatter 'lsp
             python-sort-imports-on-save t
             python-format-on-save t
             python-fill-column fill-column
             python-auto-set-local-pyvenv-virtualenv nil
             python-spacemacs-indent-guess nil)
     ;; rust
     shell-scripts
     sql
     toml
     ;; windows-scripts
     yaml

     ;; 20. Tagging
     ;;cscope
     (gtags :variables
            gtags-enable-by-default nil)

     ;; 22. Tools
     (cmake :variables
            cmake-enable-cmake-ide-support t)
     debug
     lsp
     ;; (lsp :variables
     ;;      ;;lsp-lens-enable t
     ;;      ;; ;; lsp-modeline-diagnostics-scope variable is obsolete
     ;;      ;;lsp-modeline-code-actions-segments '(icon name count)
     ;;      ;;lsp-headerline-breadcrumb-segments t
     ;;      ;;lsp-headerline-breadcrumb-segments '(project file symbols)
     ;;      )
     )


   )
  )
