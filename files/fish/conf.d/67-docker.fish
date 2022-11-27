if command -qa docker
  # Update Docker completions
  if [ (find ~/.config/fish/completions/docker.fish -mmin +10080 | wc -l) -gt 0 ]
    curl -sL https://raw.githubusercontent.com/docker/cli/master/contrib/completion/fish/docker.fish -o ~/.config/fish/completions/docker.fish
  end

  # Set an alias
  abbr -a d docker
  abbr -a doc docker-compose

end
