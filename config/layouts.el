;; =================================================================================================
;;
;; Custom layouts
;;
;; =================================================================================================
(spacemacs|define-custom-layout "@Drbr-Spacemacs"
  :binding "pes"
  :body
  (find-file "~/.emacs.d")
  (treemacs)
  (treemacs-display-current-project-exclusively)
  (winum-select-window-1)
  (display-fill-column-indicator-mode)
  (split-window-right)
  (magit-status-here)
  (winum-select-window-1)
  )

(spacemacs|define-custom-layout "@Drbr-EmacsLayer"
  :binding "peld"
  :body
  (find-file "~/.emacs.d/private/drbr")
  (treemacs)
  (treemacs-display-current-project-exclusively)
  (winum-select-window-1)
  (display-fill-column-indicator-mode)
  (split-window-right)
  (magit-status-here)
  (winum-select-window-1)
  )

(spacemacs|define-custom-layout "@Drbr-games-sudoku"
  :binding "Gs"
  :body
  (sudoku)
  )

(spacemacs|define-custom-layout "@Drbr-games-tetris"
  :binding "Gt"
  :body
  (tetris)
  )

(spacemacs|define-custom-layout "@Drbr-fun-xkcd"
  :binding "fx"
  :body
  (xkcd)
  )

(spacemacs|define-custom-layout "@Drbr-fun-fireplace"
  :binding "ff"
  :body
  (fireplace)
  )
