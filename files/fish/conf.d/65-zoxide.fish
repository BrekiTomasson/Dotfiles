# ╭⋟─────────────────────────────────────────────────────────────────────────╮
#   Simple enough, if zoxide is installed, we want to make sure that it is
#   initialized and has all its hooks in Fish.
# ╰─────────────────────────────────────────────────────────────────────────⋞╯

if command -qs zoxide
    eval $(zoxide init fish)
end

# TODO: I should probably create some aliases for zoxide to make it easier to
#       use on a daily basis.