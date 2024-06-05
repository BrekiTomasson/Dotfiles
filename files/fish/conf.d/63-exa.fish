# ╭⋟─────────────────────────────────────────────────────────────────────────╮
#   'eza' is a great terminal replacement for the 'ls' command, so why don't
#   we add some aliases to make sure we're using it as much as possible?
#   This also introduces the new short-hand 'l' command with some reasonable
#   defaults.
# ╰─────────────────────────────────────────────────────────────────────────⋞╯

# Replacing ls with eza if available.
if command -qa eza
	alias ls eza

	# Handy, quick and easy "good default".
	alias l "eza -la --icons"

	# Same as 'l', but without hidden files.
	alias ll "eza -l --icons"

	# Git-specific listing.
	alias lg "eza -lah --git --git-ignore"

	# Convenient tree aliases
	alias ll2 "ll --tree --level=2"
	alias ll3 "ll --tree --level=3"
end
