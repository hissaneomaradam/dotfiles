
# ╭──────────────────────────────────────────────╮
# │              SAKURA ZSH CONFIG              │
# ╰──────────────────────────────────────────────╯

# ─── PATH ──────────────────────────────────────
export PATH="$HOME/.local/bin:$PATH"

# ─── Oh My Zsh ─────────────────────────────────
export ZSH="${ZSH:-$HOME/.oh-my-zsh}"

ZSH_THEME=""

plugins=(
    git
    zsh-autosuggestions
    zsh-syntax-highlighting
)

if [[ -f "$ZSH/oh-my-zsh.sh" ]]; then
    source "$ZSH/oh-my-zsh.sh"
fi

# ─── Sakura colors ─────────────────────────────
export EZA_COLORS="di=38;2;217;149;166:ln=38;2;145;185;181:ex=38;2;168;185;154:*.md=38;2;185;154;200:*.c=38;2;217;164;119:*.h=38;2;217;164;119"

# ─── EZA ───────────────────────────────────────
if command -v eza >/dev/null 2>&1; then
    alias ls="eza --icons --group-directories-first"
    alias ll="eza -lah --icons --group-directories-first"
    alias la="eza -a --icons --group-directories-first"
    alias lt="eza --tree --level=2 --icons"
    alias tree="eza --tree --icons"
    alias ree="eza --tree --all --level=5 --ignore-glob=.git"
fi

# ─── Bat ───────────────────────────────────────
if command -v bat >/dev/null 2>&1; then
    :
elif command -v batcat >/dev/null 2>&1; then
    alias bat="batcat"
fi

# ─── Navigation ────────────────────────────────
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias home="cd ~"
alias dots="cd ~/dotfiles"
alias croot="cd ~/1337"

# ─── Neovim ────────────────────────────────────
if command -v nvim >/dev/null 2>&1; then
    alias v="nvim"
    alias vim="nvim"
    alias vi="nvim"
    alias nv="nvim"
fi

# ─── Git shortcuts ─────────────────────────────
alias gs="git status"
alias ga="git add"
alias gc="git commit"
alias gp="git push"
alias gl="git log --oneline --graph --decorate"
alias gd="git diff"

# ─── Zoxide ────────────────────────────────────
if command -v zoxide >/dev/null 2>&1; then
    eval "$(zoxide init zsh)"
    alias zz="zi"
fi

# ─── FZF ───────────────────────────────────────
if command -v fzf >/dev/null 2>&1; then
    source <(fzf --zsh)

    export FZF_DEFAULT_OPTS="
    --color=fg:#E9D9D5,bg:#111018,hl:#D995A6
    --color=fg+:#FFFFFF,bg+:#493442,hl+:#F0C5CE
    --color=info:#B99AC8,prompt:#D995A6,pointer:#D995A6
    --color=marker:#A8B99A,spinner:#91B8B5,header:#827681
    --color=border:#493442
    --border=rounded
    --height=80%
    --layout=reverse
    --info=inline
    "
fi

# ─── Starship prompt ───────────────────────────
if command -v starship >/dev/null 2>&1; then
    eval "$(starship init zsh)"
fi

# ─── Fastfetch ─────────────────────────────────
if command -v fastfetch >/dev/null 2>&1; then
    fastfetch
fi

# ─── Dotfiles workflow ─────────────────────────
dot() {
    (
        cd "$HOME/dotfiles" || return

        echo "── Git status ──"
        git status

        echo "\n── Tracked changes ──"
        git diff

        echo "\n── Untracked files ──"
        git ls-files --others --exclude-standard

        echo "\nReview changes manually before committing."
    )
}

