function cdr -d "cd to the top level of the current git repo"
  cd (git rev-parse --show-toplevel)
end
