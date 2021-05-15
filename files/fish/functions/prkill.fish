function prkill --description "Kill a process interactively"
  ps aux | peco | awk '{ print $2 }' | xargs kill
end
