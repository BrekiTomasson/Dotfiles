function pr9kill --description "Kill -9 a process interactively"
  ps aux | peco | awk '{ print $2 }' | xargs kill -KILL
end

