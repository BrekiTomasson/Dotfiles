# ======================================
# ==  Various things to run on init!  ==
# ======================================

# Remove the default greeting.
set --erase fish_greeting

# Override system paths with the locally installed Brew versions.
set -x PATH /usr/local/sbin $PATH

# Set default editor.
set -x EDITOR nano

# NodeJS
set -gx PATH node_modules/.bin $PATH

# PHP
set -gx PATH vendor/bin $PATH

# Add my Script-folder to the path.
set -x PATH $PATH $HOME/Scripts

# Add my Dotfile utility Script folder to the path.
set -x PATH $PATH $HOME/Projects/Dotfiles/scripts

# Add the Composer bin folder to the path.
set -x path $PATH $HOME/.composer/vendor/bin

# Make the blue color used for directories more readable.
set -x LSCOLORS Exfxcxdxbxegedabagacad

# Ensure iTerm2 Shell Integration is set up.
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# Ensure Fisher is installed.
if not functions -q fisher
  set -q 'XDG_CONFIG_HOME'; or set 'XDG_CONFIG_HOME' "$HOME"/.config
  curl 'https://git.io/fisher' --create-dirs -sLo "$XDG_CONFIG_HOME"/fish/functions/fisher.fish
  fish -c fisher
end
