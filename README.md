# ✿ Dotfiles

My personal Linux development environment, managed with **Git** and **GNU Stow**.

A collection of configurations designed for a clean, minimal, and personalized terminal and Neovim experience.

## Contents

| Package | Description |
|---|---|
| `zsh` | Zsh configuration, aliases, and shell initialization |
| `starship` | Custom Sakura-themed terminal prompt |
| `nvim` | Neovim configuration powered by LazyVim |

## Preview

- **Shell:** Zsh
- **Prompt:** Starship
- **Editor:** Neovim + LazyVim
- **Theme:** Sakura
- **Font:** JetBrainsMono Nerd Font
- **Dotfile manager:** GNU Stow

## Repository structure

```text
dotfiles/
├── .gitignore
├── README.md
├── zsh/
│   └── .zshrc
├── starship/
│   └── .config/
│       └── starship.toml
└── nvim/
    └── .config/
        └── nvim/
            ├── init.lua
            ├── lazy-lock.json
            ├── lazyvim.json
            ├── colors/
            ├── lua/
            │   ├── config/
            │   └── plugins/
            └── stylua.toml
```

## Requirements

The following applications are required:

- Git
- GNU Stow
- Zsh
- Starship
- eza
- Neovim
- GitHub account (for syncing)

A Nerd Font is recommended for terminal icons. I use JetBrainsMono Nerd Font.

### Install dependencies on Ubuntu

```bash
sudo apt update
sudo apt install git stow zsh neovim
```

Install the following separately using their official instructions:

- [Starship](https://starship.rs/)
- [eza](https://eza.rocks/)
- [JetBrainsMono Nerd Font](https://www.nerdfonts.com/font-downloads)

Neovim plugins may require additional dependencies depending on the plugins being used.

## Installation

### 1. Clone the repository

Using SSH:

```bash
git clone git@github.com:hissaneomaradam/dotfiles.git ~/dotfiles
```

Or using HTTPS:

```bash
git clone https://github.com/hissaneomaradam/dotfiles.git ~/dotfiles
```

### 2. Back up existing configurations

Before applying Stow, back up any existing configurations that conflict with the repository.

For example:

```bash
mkdir -p ~/dotfiles-backup

[ ! -e ~/.zshrc ] || mv ~/.zshrc ~/dotfiles-backup/
[ ! -e ~/.config/starship.toml ] || mv ~/.config/starship.toml ~/dotfiles-backup/
[ ! -e ~/.config/nvim ] || mv ~/.config/nvim ~/dotfiles-backup/
```

### 3. Apply configurations

Navigate to the repository:

```bash
cd ~/dotfiles
```

Apply all packages:

```bash
stow zsh starship nvim
```

GNU Stow creates symbolic links in the home directory pointing to the configurations inside this repository.

### 4. Reload the shell

```bash
source ~/.zshrc
```

Launch Neovim:

```bash
nvim
```

LazyVim will initialize its plugins. The first launch may take some time.

## Configurations

### Zsh

**Repository location:**

```text
zsh/.zshrc
```

**Installed location:**

```text
~/.zshrc
```

Contains:

- Shell initialization
- Custom aliases
- eza integration
- Starship initialization

Reload:

```bash
source ~/.zshrc
```

### Starship

**Repository location:**

```text
starship/.config/starship.toml
```

**Installed location:**

```text
~/.config/starship.toml
```

Features:

- Custom Sakura color palette
- Git branch and status information
- Directory navigation display
- Command execution duration
- Custom prompt symbols

### Neovim / LazyVim

**Repository location:**

```text
nvim/.config/nvim/
```

**Installed location:**

```text
~/.config/nvim/
```

Powered by [LazyVim](https://www.lazyvim.org/).

Includes:

- Custom Sakura colorscheme
- Personalized dashboard and ASCII artwork
- Custom keybindings
- Editor options
- Autocommands
- Plugin configurations
- 42 header integration
- Plugin version lockfile

Launch:

```bash
nvim
```

## Managing dotfiles

### Edit configurations

Because Stow creates symbolic links, editing a configuration through its normal home-directory path also changes the file in this repository.

For example:

```bash
nvim ~/.zshrc
nvim ~/.config/starship.toml
nvim ~/.config/nvim
```

### Check changes

```bash
cd ~/dotfiles

git status
git diff
```

### Commit and push changes

```bash
git add .
git commit -m "Update configurations"
git push
```

### Pull changes from GitHub

```bash
cd ~/dotfiles
git pull
```

### Reapply a package

```bash
stow -R nvim
```

### Remove a package's symlinks

```bash
stow -D nvim
```

Replace `nvim` with `zsh` or `starship` as needed.

Removing symlinks does not delete the package from the repository.

## Syncing across machines

On another Linux machine:

1. Install the required applications.
2. Clone this repository.
3. Back up conflicting configurations.
4. Run GNU Stow.

```bash
git clone git@github.com:hissaneomaradam/dotfiles.git ~/dotfiles

cd ~/dotfiles

stow zsh starship nvim
```

Your configurations will be linked into your home directory.

---

**Made with ✿ and a little bit of terminal obsession.**
