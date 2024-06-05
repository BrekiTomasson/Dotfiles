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

# Add completions
if command -qs gh
	gh completion -s fish >$HOME/.config/fish/completions/gh.fish

	abbr -a grv 'gh repo view -w'
	abbr -a gpv 'gh pr view -w'
end

# Better Diffs
if command -qs delta
	git config --global core.pager delta
	git config --global interactive.diffFilter 'delta --color-only'
	git config --global delta.syntax-theme Dracula
	git config --global delta.line-numbers true
	git config --global delta.decorations true
end

# A bunch of handy git abbreviations
abbr -a ga  'git add'
abbr -a gb  'git branch --verbose'
abbr -a gbl 'git branch --list'
abbr -a gc  'git commit --signoff'
abbr -a gd  'git diff'
abbr -a glg 'git log --graph --decorate --oneline --abbrev-commit'
