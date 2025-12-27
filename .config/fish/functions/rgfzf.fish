function rgfzf --description "Fuzzy find files using ripgrep"
    set -l rg_prefix 'rg --column --line-number --no-heading --color=always --smart-case --hidden'
    fzf --bind "start:reload:$rg_prefix \"\"" \
        --bind "change:reload:$rg_prefix {q} || true" \
        # --bind "enter:become(nvim {})" \
        --ansi --disabled \
        --height=50% --layout=reverse
end
