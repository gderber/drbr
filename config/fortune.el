;; Supply a random fortune cookie as the *scratch* message.
(when (executable-find "fortune")
  (setq-default
   fortune-dir "/usr/share/games/fortunes"
   fortune-file "/usr/share/games/fortunes/startrek"
   initial-scratch-message

   (with-temp-buffer
     (shell-command "fortune" t)
     (let ((comment-start ";;"))
       (comment-region (point-min) (point-max)))
     (concat (buffer-string) "\n"))
   ))
