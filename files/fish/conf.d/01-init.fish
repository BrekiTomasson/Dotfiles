####################################
#  Various things to run on init!  #
#                                  #
# Mainly related to locales, shell #
# defaults, paths and other things #
# like that.                       #
####################################

# Remove the default greeting.
set fish_greeting ""

# Locale and keyboard
set -Ux LC_CTYPE en_US.UTF-8
set -Ux LANG en_US.UTF-8

# Set default editor.
set -Ux EDITOR nano
set -Ux VISUAL $EDITOR

# Set projects path to be used elsewhere.
set -Ux PROJECTS $HOME/Projects

# Path-related things
## NodeJS & PHP
set -p PATH node_modules/.bin vendor/bin
## Brew sbin path before anything else.
set -p PATH /usr/local/sbin
## Personal Script folders
set -a PATH $HOME/Scripts $HOME/Projects/Dotfiles/scripts
## Add the Global Composer bin folder to the path.
set -a PATH $HOME/.composer/vendor/bin

# Ensure iTerm2 Shell Integration is set up.
test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

# Ensure Fisher is installed.
if not functions -q fisher
  set -q 'XDG_CONFIG_HOME'; or set 'XDG_CONFIG_HOME' "$HOME"/.config
  curl 'https://git.io/fisher' --create-dirs -sLo "$XDG_CONFIG_HOME"/fish/functions/fisher.fish
  fish -c fisher
end
