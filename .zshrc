function parse_git_branch() {
    git branch 2> /dev/null | sed -n -e 's/^\* \(.*\)/[\1]/p'
}

setopt PROMPT_SUBST
PROMPT='%n (%F{cyan}@%T%f) %F{red}$(parse_git_branch)%f %F{yellow}%1d%f $ '

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/gradynnagle/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/gradynnagle/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/gradynnagle/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/gradynnagle/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# pnpm
export PNPM_HOME="/Users/gradynnagle/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm endexport PNPM_HOME="/Users/gradynnagle/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# aliases
alias goraven='cd ~/bin/energyraven'
