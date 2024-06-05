# ╭⋟─────────────────────────────────────────────────────────────────────────╮
#   This file contains things related to git and the GitHub CLI tool "gh".
# ╰─────────────────────────────────────────────────────────────────────────⋞╯

# Stop asking me for my password.
switch (uname)
	case Darwin
		git config --global credential.helper osxkeychain
	case '*'
		git config --global credential.helper cache
end

# And a couple of handy aliases as well.
alias gititer='git add . && git commit -m ":zap: minor iteration" && git push'
alias gitlog='git log --graph --decorate --oneline --all'
alias gitwip='git add . && git commit -m ":construction: work in progress" && git push'

# Add completions for gh CLI tool.
if command -qs gh
	gh completion -s fish >$HOME/.config/fish/completions/gh.fish

	abbr -a grv 'gh repo view -w'
	abbr -a gpv 'gh pr view -w'
end