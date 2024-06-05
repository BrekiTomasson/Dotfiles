# ╭⋟─────────────────────────────────────────────────────────────────────────╮
#   The command 'cat' is cool and all, but have you heard of 'bat'? This file
#   just makes sure to alias it correctly and ensure that bat is used as the
#   default man pager.
# ╰─────────────────────────────────────────────────────────────────────────⋞╯

if command -qa bat
	abbr -a cat 'bat'
	set -Ux MANPAGER "sh -c 'col -bx | bat -l man -p'"
end

# TODO: Is there anything else we can do with bat?