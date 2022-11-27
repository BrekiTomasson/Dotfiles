# Replacing, enhancing, or renaming system functionality.
alias cls="clear"
alias egrep "egrep --color=auto"
alias fgrep "fgrep --color=auto"
alias grep "grep --color=auto"

# Fix that silly little 'brwe' spelling mistake.
if command -qa brew
  abbr -a brwe brew
end
