# ╭⋟─────────────────────────────────────────────────────────────────────────╮
#   The prompt we're using is being provided by oh-my-posh, so all we need to
#   do here is initialize it with whatever configuration or options we want. 
# ╰─────────────────────────────────────────────────────────────────────────⋞╯

oh-my-posh init fish --config $(brew --prefix oh-my-posh)/themes/spaceship.omp.json | source
