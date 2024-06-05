# ╭⋟─────────────────────────────────────────────────────────────────────────╮
#   This file sets up all kinds of environmental things, mainly related to
#   locales, paths, default editors and stuff like that. Nothing overly
#   complicated or application-specific in this file, just system defaults.
# ╰─────────────────────────────────────────────────────────────────────────⋞╯

## Set locale and keyboard.
set -Ux LC_CTYPE en_US.UTF-8
set -Ux LANG en_US.UTF-8

# Set default editor.
if command -qs nano
	set -gx EDITOR nano
end

# Set projects path.
set -Ux PROJECTS $HOME/Projects

# Disable Homebrew Environment hints
set -Ux HOMEBREW_NO_ENV_HINTS

# Add Homebrew's sbin folder to path (prepended to ensure it takes precedence over system paths).
set -p PATH /usr/local/sbin

# Include binary folders from NodeJS & PHP from current path.
set -a PATH node_modules/.bin vendor/bin

# Add personal Script folders to path.
set -a PATH $HOME/Scripts $PROJECTS/Dotfiles/scripts

# Add global Composer binary folder to path.
set -a PATH $HOME/.composer/vendor/bin

# Allows you to execute files from your current directory without entering the ./ prefix
set -a PATH .

# Remove the default greeting.
set fish_greeting