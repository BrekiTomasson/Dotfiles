function git-stats
  git log \
    --since '30 days ago' \
    --author (git config --global user.name) \
    --pretty=tformat: --numstat |
    awk '{
      add += $1; subs += $2; loc += $1 - $2
      } END {
      printf "Lines: +\033[32m%s\033[0m -\033[31m%s\033[0m\nTotal: %s\n", add, subs, loc
      }'
end
