function fish_user_key_bindings

  # peco
  bind \cr peco_select_history   # Bind peco select history.    Ctrl-R
  bind \cf peco_change_directory # Bind peco change directory.  Ctrl-F

  # fzf methods
  bind \cb fzf_change_git_branch # Bind FZF Change Git Branch.  Ctrl-B

  # Prevent default behavior
  bind \cd delete-char           # Prevent iTerm2 from closing. Ctrl-D

end
