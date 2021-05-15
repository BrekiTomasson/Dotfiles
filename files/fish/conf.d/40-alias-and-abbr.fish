# =====================================================================
# ==                     A Long List of Aliases                      ==
# ==                                                                 ==
# == AKA "Things I mistyped so often that I eventually just gave up" ==
# =====================================================================

# Common typos and abbreviations
alias cls="clear"

# Mashing parameters into a short command.
alias ls "ls -p -G"
alias la "ls -A"

if type -q  exa
  alias ll "exa -l -g --icons"
  alias lla "ll -a"
else
  alias ll "ls -l"
  alias lla "ll -A"
end

alias g git
alias ds="du -d1 -h"

# Replacing or enhancing system functionality.
alias grep="grep --color=auto"
alias fgrep="fgrep --color=auto"
alias egrep="egrep --color=auto"

# Other stuff
alias upup="$HOME/Scripts/update_things"
alias l1="tree --dirsfirst -ChFL 1"
alias l2="tree --dirsfirst -ChFL 2"
alias l3="tree --dirsfirst -ChFL 3"
alias l4="tree --dirsfirst -ChFL 4"
alias l5="tree --dirsfirst -ChFL 5"
alias l6="tree --dirsfirst -ChFL 6"

# =====================================================================
# ==                  A Long List of Abbreviations                   ==
# ==                                                                 ==
# == AKA "Long words are long. Short words are shorter. Short good." ==
# =====================================================================

# Git stuff
abbr -a g   "git"
abbr -a ga  "git add"
abbr -a gca "git commit -a -m"
abbr -a gd  "git diff"
abbr -a gp  "git push"
abbr -a gs  "git status"

# Typos etc
abbr -a brwe "brew"
