# ╭⋟─────────────────────────────────────────────────────────────────────────╮
#   Things that are too specific to go into 01-init, but not specific enough
#   to warrant going into any of the other files out there.
# ╰─────────────────────────────────────────────────────────────────────────⋞╯

# Ensure iTerm2 Shell Integration is set up.
test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish

# Ensure Fisher is installed.
if not functions -q fisher
	set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME "$HOME"/.config
	curl 'https://git.io/fisher' --create-dirs -sLo "$XDG_CONFIG_HOME"/fish/functions/fisher.fish
	fish -c fisher
end
