bindkey -v # vi mode

bindkey "^[[A" up-line-or-search
bindkey "^[[B" down-line-or-search

bindkey "^[[H" beginning-of-line
bindkey "^[[1~" beginning-of-line
bindkey "^[[7~" beginning-of-line
bindkey "^[OH" beginning-of-line
bindkey "^[[F" end-of-line
bindkey "^[[4~" end-of-line
bindkey "^[[8~" end-of-line
bindkey "^[OF" end-of-line

bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

bindkey "^[[3^" kill-word
bindkey "^H" backward-kill-word
bindkey "^[[3~" delete-char

bindkey "^r" history-incremental-search-backward

bindkey '^[[Z' reverse-menu-complete
