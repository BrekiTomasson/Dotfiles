# Stop asking me for my password.
switch (uname)
case Darwin
  git config --global credential.helper osxkeychain
case '*'
  git config --global credential.helper cache
end

if command -qs gh
  gh completion -s fish > $HOME/.config/fish/completions/gh.fish

  abbr -a 'grv' 'gh repo view -w'
  abbr -a 'gpv' 'gh pr view -w'
end

# Better Diffs
if command -qs delta
  git config --global core.pager delta
  git config --global interactive.diffFilter 'delta --color-only'
  git config --global delta.syntax-theme Dracula
  git config --global delta.line-numbers true
  git config --global delta.decorations true
end

# Use vscode as mergetool, because why not?
if command -qs code
  git config --global merge.tool vscode
    and git config --global mergetool.vscode.cmd "code --wait $MERGED"
end

# A bunch of handy git abbreviations
abbr -a gl 'git pull --prune'
abbr -a glg "git log --graph --decorate --oneline --abbrev-commit"
abbr -a glga "glg --all"
abbr -a gp 'git push origin HEAD'
abbr -a gpa 'git push origin --all'
abbr -a gd 'git diff'
abbr -a gc 'git commit -s'
abbr -a gca 'git commit -sa'
abbr -a gco 'git checkout'
abbr -a gb 'git branch -v'
abbr -a ga 'git add'
abbr -a gaa 'git add -A'
abbr -a gcm 'git commit -sm'
abbr -a gcam 'git commit -sam'
abbr -a gs 'git status -sb'
abbr -a glnext 'git log --oneline (git describe --tags --abbrev=0 @^)..@'
abbr -a gw 'git switch'
abbr -a gm 'git switch (git main-branch)'
abbr -a gms 'git switch (git main-branch); and git sync'
abbr -a gwc 'git switch -c'
