# ╭⋟─────────────────────────────────────────────────────────────────────────╮
#   A handful of simple aliases having to do with core system functions and
#   features. Again, nothing too groundbreaking or complicated, just things
#   that make life a little bit easier. Aliases requiring specific 3rd party
#   tools to be installed will be defined in separate configuration files.
# ╰─────────────────────────────────────────────────────────────────────────⋞╯

# I've gotten too used to quitting things with 'q', so why not exit the
# terminal that way, too?
alias "q"="exit"

# Because who wants to write that whole word when three letters are enough?
alias cls="clear"

# I find myself writing 'tail -f' way too often, so why not make an alias?
alias tf="tail -f"

# Get the current week number.
alias week='date +%V'

# Recursively cleans up all those pointless .DS_Store files.
alias clean='find . -name '.DS_Store' -type f -ls -delete $argv'

# Start a simple stopwatch.
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Tools that display your IP address(es).
alias pubip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="sudo ifconfig | grep -Eo 'inet (addr:)?([0-9]*\\.){3}[0-9]*' | grep -Eo '([0-9]*\\.){3}[0-9]*' | grep -v '127.0.0.1'"
alias ips="sudo ifconfig -a | grep -o 'inet6\\? \\(addr:\\)\\?\\s\\?\\(\\(\\([0-9]\\+\\.\\)\\{3\\}[0-9]\\+\\)\\|[a-fA-F0-9:]\\+\\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Flush Directory Service cache.
alias flush="dscacheutil -flushcache && killall -HUP mDNSResponder"

# Canonical hex dump; some systems have this symlinked.
command -v hd > /dev/null || alias hd="hexdump -C"

# OS X has no `md5sum`, so use `md5` as a fallback.
command -v md5sum > /dev/null || alias md5sum="md5"

# OS X has no `sha1sum`, so use `shasum` as a fallback.
command -v sha1sum > /dev/null || alias sha1sum="shasum"