# ╭⋟─────────────────────────────────────────────────────────────────────────╮
#   Ripgrep is a nice alternative to grep, so let's abbr that sucker in there
#   to remind me to use it whenever I type "grep" by accident.
# ╰─────────────────────────────────────────────────────────────────────────⋞╯

if command -qs rg
	abbr -a grep rg
end
