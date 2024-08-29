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
             python-backend 'anaconda
             python-test-runner 'pytest
             python-formatter 'yapf
             python-format-on-save t
             python-sort-imports-on-save t
             python-fill-column 100
             python-spacemacs-indent-guess nil)
     ;; rust
     shell-scripts
     sql
     ;; windows-scripts
     yaml

     ;; 22. Tools
     (cmake :variables
            cmake-enable-cmake-ide-support t)
     debug
     (lsp :variables
          lsp-lens-enable t
          ;;lsp-modeline-diagnostics-scope :file
          lsp-modeline-code-actions-segments '(icon name count)
          lsp-headerline-breadcrumb-segments t
          lsp-headerline-breadcrumb-segments '(project file symbols)
          )
     )
   )
  )
