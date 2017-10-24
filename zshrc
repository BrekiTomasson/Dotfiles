# Nobody wants zsh to take longer to load than it absolutely has to,
# right? Let's throw zprof in there to see why that happens. Profile
# ALL the shell functions!
PROFILING=${PROFILING:-true}
if $PROFILING; then
    zmodload zsh/zprof
fi

# Location of my dotfiles
DOTFILES=$HOME/Dotfiles

# Larger history files are nice, right? So let's have some of that as well.
export HISTSIZE=32768;
export HISTFILESIZE=$HISTSIZE;

# Enable persistent REPL history for `node`.
export NODE_REPL_HISTORY=~/.node_history;
# Allow 32³ entries; the default is 1000.
export NODE_REPL_HISTORY_SIZE='32768';
# Use sloppy mode by default, matching web browsers.
export NODE_REPL_MODE='sloppy';

# I'm going to lose a lot of nerd cred here, but I've just never been a big
# fan of vim. Still running nano as my editor of choice here. Sorry! *^_^*
export CLICOLOR=1
export EDITOR="nano"
export USE_EDITOR=$EDITOR
export VISUAL=$EDITOR
export PAGER='less'

# Let's have Antigen do its stuff. First we have to make sure that it's where
# it's supposed to be. That would be a silly mistake to make.
if [[ ! -f ~/.antigen.zsh ]]; then
  curl https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > ~/Library/antigen.zsh
fi

# Then, let's load it!
source ~/Library/antigen.zsh

# And tell it to use oh-my-zsh.
antigen use oh-my-zsh

# ... And load some bundles.
antigen bundles <<EOBUNDLES
 copydir
 copyfile
 git
 nojhan/liquidprompt
 osx
 robbyrussell/oh-my-zsh lib/
 rupa/z
 tmuxinator
 zsh-users/zsh-autosuggestions
 zsh-users/zsh-syntax-highlighting
EOBUNDLES
antigen apply

# ... And a theme.
antigen theme cloud

# I think that's enough for now, Antigen. You've been good.
antigen apply

# And since we're loading our themes, let's load our fonts, too!
source ~/.fonts/*.sh

# We need to update PATH for the Google Cloud SDK.
if [ -f '/Users/brekitomasson/Downloads/google-cloud-sdk/path.zsh.inc' ]; then
    source '/Users/brekitomasson/Downloads/google-cloud-sdk/path.zsh.inc';
fi

# Some shell command completion for Google Cloud SDK is nice, too.
if [ -f '/Users/brekitomasson/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then
    source '/Users/brekitomasson/Downloads/google-cloud-sdk/completion.zsh.inc';
fi

## And then let's do a couple of other things, like ...
# ... remove the history (fc -l) command from the history list.
setopt histnostore
# ... remove superfluous blanks from each command line being added to the history list.
setopt histreduceblanks
# ... do not exit on end-of-file. Require the use of exit or logout instead.
setopt ignoreeof
# ... print the exit value of programs with non-zero exit status.
setopt printexitvalue
# ... do not share history
setopt no_share_history
# ... enabling autmatic correction.
ENABLE_CORRECTION="true"
# ... show us red dots when we wait. Everbody loves red dots!
COMPLETION_WAITING_DOTS="true"
# ... change the format of history timestamps.
HIST_STAMPS="yyyy-mm-dd"
# ... Being case sensitive is a good idea, too.
CASE_SENSITIVE="true"
# ... change to a directory without the "cd" command? What manner of black magic IS this?!
setopt auto_cd
# ... And let's disable this dirty little thing as well.
DISABLE_UNTRACKED_FILES_DIRTY="true"
# ... And let's update zsh a little more often than default.
export UPDATE_ZSH_DAYS=4

export PATH="/usr/local/opt/curl/bin:/usr/local/sbin:$(brew --prefix homebrew/php/php71)/bin:/usr/local/sbin:$HOME/.composer/vendor/bin:$PATH"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
unalias imgcat

source ~/.fonts/*.sh

# Oh, let's put some aliases up there as well. They're always good to have.
alias pat='php /Users/brekitomasson/Dropbox/Text/Sites/BarrelScraper/artisan tinker'
alias pa='php /Users/brekitomasson/Dropbox/Text/Sites/BarrelScraper/artisan'

# Stuff I never really use but cannot delete either because of http://xkcd.com/530/
alias stfu="osascript -e 'set volume output muted true'"
alias pumpitup="osascript -e 'set volume output volume 100'"

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi
