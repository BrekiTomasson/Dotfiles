# ╭⋟─────────────────────────────────────────────────────────────────────────╮
#   Anything related to the nifty little CLI app with the nifty little name.
# ╰─────────────────────────────────────────────────────────────────────────⋞╯

if command -qs thefuck
    thefuck --alias | source
end
