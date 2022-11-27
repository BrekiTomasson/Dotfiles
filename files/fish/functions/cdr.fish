function cdr -d "cd to the top level of the current git repo"
  set dir (git rev-parse --show-toplevel 2>&1)
  if not test -d $dir
    echo "Your current directory is not a git repository."
    return 1
  end

  builtin cd $dir
end
