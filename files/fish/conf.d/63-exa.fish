# Replacing ls with exa if available.
if command -qa exa
  alias ls  "exa"
  alias lg  "exa --git"
  alias l   "exa -lah"
  alias la  "ls -a"
  alias ll  "exa -l --icons"
  alias lla "ll -a"
  alias ll2 "ll --tree --level=2"
  alias ll3 "ll --tree --level=3"
else
  alias l   "ls -lAh"
  alias la  "ls -A"
  alias ll  "ls -l"
end

