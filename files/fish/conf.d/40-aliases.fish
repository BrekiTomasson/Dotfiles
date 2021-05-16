# Common typos and abbreviations
alias cls="clear"

# Replacing or enhancing system functionality.
alias grep  "grep --color=auto"
alias fgrep "fgrep --color=auto"
alias egrep "egrep --color=auto"

# Start the screensaver on macOS.
if test (uname) = Darwin
  alias afk 'open -a /System/Library/CoreServices/ScreenSaverEngine.app'
end

# Fix 'brwe' spelling mistake.
if command -qa brew
  abbr -a brwe brew
end
