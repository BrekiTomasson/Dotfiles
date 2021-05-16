if command -qa docker
  # Update Docker completions
  curl -sL https://raw.githubusercontent.com/docker/cli/master/contrib/completion/fish/docker.fish -o ~/.config/fish/completions/docker.fish

  # Set an alias
  abbr -a d docker
  abbr -a doc docker-compose

  function docker-cp -d "Pull, retag, and push a docker image"
    docker pull $argv[1]
    docker tag $argv[1] $argv[2]
    docker push $argv[2]
  end

end
