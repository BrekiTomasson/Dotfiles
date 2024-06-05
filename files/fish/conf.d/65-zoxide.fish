if command -qa eza
    eval $(zoxide init fish)
else
    echo "zoxide: not found, install from https://github.com/ajeetdsouza/zoxide'"
end
