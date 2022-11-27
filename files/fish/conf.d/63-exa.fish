# Replacing ls with exa if available.
if command -qa exa
  alias ls exa

  # Git-specific listing.
  alias lg "exa -lah --git --git-ignore"

  # Handy, quick and easy "good default"
  alias la "exa -la --icons"

  # Same, but without hidden files.
  alias ll "exa -l --icons"

  # Convenient tree aliases
  alias ll2 "ll --tree --level=2"
  alias ll3 "ll --tree --level=3"
end
