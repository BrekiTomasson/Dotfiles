# ╭⋟─────────────────────────────────────────────────────────────────────────╮
#   Simple enough, if zoxide is installed, we want to make sure that it is
#   initialized and has all its hooks in Fish.
# ╰─────────────────────────────────────────────────────────────────────────⋞╯

if command -qs zoxide
  zoxide init fish | source
end
