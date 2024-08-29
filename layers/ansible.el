(configuration-layer/declare-layers
 '(
   (ansible
    markdown
    yaml

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
