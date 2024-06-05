# Replacing ls with eza if available.
if command -qa eza
  alias ls eza

  # Handy, quick and easy "good default".
  alias l "eza -la --icons"

  # Git-specific listing.
  alias lg "eza -lah --git --git-ignore"

  # Same, but without hidden files.
  alias ll "eza -l --icons"

  # Convenient tree aliases
  alias ll2 "ll --tree --level=2"
  alias ll3 "ll --tree --level=3"
end
