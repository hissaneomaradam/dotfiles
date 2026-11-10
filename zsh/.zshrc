# ─── PATH ───
export PATH="$HOME/.local/bin:$PATH"

# ─── Oh My Zsh ───
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

source "$ZSH/oh-my-zsh.sh"

# ─── Startup ───
if command -v fastfetch >/dev/null 2>&1; then
    fastfetch
fi

# ─── Sakura terminal setup ───

# eza aliases
if command -v eza >/dev/null 2>&1; then
    alias ls="eza --icons --group-directories-first"
    alias ll="eza -lah --icons --group-directories-first"
    alias la="eza -a --icons --group-directories-first"
    alias lt="eza --tree --level=2 --icons"
fi

# eza colors
export EZA_COLORS="di=38;2;217;149;166:ln=38;2;145;185;181:ex=38;2;168;185;154:*.md=38;2;185;154;200:*.c=38;2;217;164;119:*.h=38;2;217;164;119"

# ─── Starship prompt ───
if command -v starship >/dev/null 2>&1; then
    eval "$(starship init zsh)"
fi

# ─── Zoxide ───
if command -v zoxide >/dev/null 2>&1; then
    eval "$(zoxide init zsh)"
    alias zz="zi"
fi

# ─── fzf ───
if command -v fzf >/dev/null 2>&1; then
    source <(fzf --zsh)
fi

# ─── Dotfiles Git workflow ───
dot() {
    (
        cd "$HOME/dotfiles" || return

        git status
        git diff

        git add . &&
        git commit -m "${1:-Updating config}" &&
        git push
    )
}
# ─── Zoxide ───
if command -v zoxide &>/dev/null; then
    eval "$(zoxide init zsh)"
    alias zz="zi"
fi

# ─── Neovim ───
alias v="nvim"
alias vim="nvim"
alias vi="nvim"
alias nv="nvim"
