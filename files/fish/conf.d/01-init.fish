# Remove the default greeting.
set fish_greeting ""

# Locale and keyboard
set -Ux LC_CTYPE en_US.UTF-8
set -Ux LANG en_US.UTF-8

# Set default editor.
set -Ux EDITOR nano
set -Ux VISUAL $EDITOR

# Set projects path.
set -Ux PROJECTS $HOME/Projects

# Include binary folders from NodeJS & PHP in path
set -a PATH node_modules/.bin vendor/bin

# Brew sbin path (prepended to ensure it takes precedence over system paths).
set -p PATH /usr/local/sbin

# Personal Script folders
set -a PATH $HOME/Scripts $PROJECTS/Dotfiles/scripts

# Global Composer binary folder.
set -a PATH $HOME/.composer/vendor/bin

# Allows you to execute files from your current directory without entering the ./ prefix
set -a PATH .

# Ensure iTerm2 Shell Integration is set up.
test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish

# Ensure Fisher is installed.
if not functions -q fisher
  set -q XDG_CONFIG_HOME; or set XDG_CONFIG_HOME "$HOME"/.config
  curl 'https://git.io/fisher' --create-dirs -sLo "$XDG_CONFIG_HOME"/fish/functions/fisher.fish
  fish -c fisher
end
