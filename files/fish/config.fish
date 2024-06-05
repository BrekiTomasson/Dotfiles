if status is-interactive
    # ... This feels like it can probably be removed, as all the fun stuff
    # is happening over in the conf.d folder anyway.
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

