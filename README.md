# ✿ Dotfiles

My personal Linux development environment, managed with Git and shared between my Ubuntu WSL laptop and 1337 school computer.

The goal is to keep my terminal and development tools consistent across machines while maintaining a simple, portable configuration.

## ✿ Aesthetic

**Sakura-inspired terminal theme**

| Color | Hex |
| --- | --- |
| Sakura | `#D995A6` |
| Petal | `#F0C5CE` |
| Cream | `#E9D9D5` |
| Wisteria | `#B99AC8` |
| Moss | `#A8B99A` |
| Muted | `#827681` |
| Red | `#C97986` |

## ✿ Repository Structure

```text
dotfiles/
├── nvim/
│   └── .config/
│       └── nvim/
│           ├── colors/
│           ├── lua/
│           ├── init.lua
│           ├── lazy-lock.json
│           ├── lazyvim.json
│           └── stylua.toml
│
├── starship/
│   └── .config/
│       └── starship.toml
│
├── zsh/
│   └── .zshrc
│
├── .gitignore
└── README.md
```

## ✿ What's Included

### 1. Zsh + Oh My Zsh

My primary shell is Zsh, configured with Oh My Zsh.

**Plugins:**

- `git` — Git aliases and shortcuts.
- `zsh-autosuggestions` — Suggest commands from history.
- `zsh-syntax-highlighting` — Highlight commands as you type.

### 2. Starship

A fast, customizable shell prompt.

Features:

- Custom Sakura color palette.
- Personal prompt identity: `✿ O>H>I>S>S>A>N>E`.
- Current directory.
- Git branch and working-tree status.
- Command execution time.
- Different indicators for successful and failed commands.

Configuration: `starship/.config/starship.toml`

### 3. eza

A modern replacement for `ls`, with icons and directory grouping.

| Alias | Command |
| --- | --- |
| `ls` | List files with icons |
| `ll` | Detailed listing, including hidden files |
| `la` | Show all files |
| `lt` | Tree view, depth 2 |

Custom Sakura-inspired file colors are configured through `EZA_COLORS`.

### 4. Fastfetch

Displays system information when opening a new terminal.

### 5. Zoxide

A smarter replacement for `cd`.

Zoxide learns which directories I visit and lets me jump to them using partial names.

| Command | Description |
| --- | --- |
| `z libft` | Jump to a frequently visited directory |
| `z CommonCore` | Jump to a matching directory |
| `z -` | Return to the previous directory |
| `zi` | Interactive directory picker |
| `zz` | Shortcut for `zi` |

Zoxide maintains a separate directory database on each machine.

### 6. fzf

A command-line fuzzy finder.

Used with Zoxide for interactive directory navigation.

Useful shortcuts:

| Shortcut | Description |
| --- | --- |
| `Ctrl + R` | Search command history |
| `Ctrl + T` | Search files |
| `Alt + C` | Interactive directory navigation |

### 7. Neovim + LazyVim

My Neovim configuration is managed inside `nvim/.config/nvim`.

Includes:

- LazyVim configuration.
- Custom Lua configuration.
- Keymaps and editor options.
- Plugin lockfile.
- Custom colors directory.
- Formatting configuration with StyLua.

## ✿ Installation

### Requirements

Install the tools separately on each machine:

- Git
- Zsh
- Oh My Zsh
- zsh-autosuggestions
- zsh-syntax-highlighting
- Starship
- eza
- Fastfetch
- Zoxide
- fzf
- Neovim

A Nerd Font is recommended for terminal icons. I use JetBrainsMono Nerd Font.

### 1. Clone the repository

```bash
git clone git@github.com:hissaneomaradam/dotfiles.git ~/dotfiles
```

### 2. Back up existing configurations

Before creating symlinks, preserve existing configurations:

```bash
mkdir -p ~/.dotfiles-backup ~/.config

[ ! -e ~/.zshrc ] || mv ~/.zshrc ~/.dotfiles-backup/zshrc
[ ! -e ~/.config/starship.toml ] || mv ~/.config/starship.toml ~/.dotfiles-backup/starship.toml
[ ! -e ~/.config/nvim ] || mv ~/.config/nvim ~/.dotfiles-backup/nvim
```

### 3. Create symbolic links

```bash
ln -s ~/dotfiles/zsh/.zshrc ~/.zshrc

ln -s ~/dotfiles/starship/.config/starship.toml \
    ~/.config/starship.toml

ln -s ~/dotfiles/nvim/.config/nvim \
    ~/.config/nvim
```

### 4. Reload Zsh

```bash
source ~/.zshrc
```

The configurations now point directly to the files in this repository.

## ✿ Git Workflow

The `.zshrc` includes a custom `dot` function to manage the repository.

```bash
dot "Update configuration"
```

It automatically:

1. Changes into `~/dotfiles`.
2. Displays Git status.
3. Displays the current diff.
4. Stages changes.
5. Creates a commit using the supplied message.
6. Pushes changes to GitHub.

You can also manage changes manually:

```bash
cd ~/dotfiles

git status
git add .
git commit -m "Update configuration"
git push
```

## ✿ Synchronization

The same repository is used on both my personal laptop and school computer.

**Personal laptop → GitHub → School computer**

When changing configurations:

On the machine where the changes were made:

```bash
cd ~/dotfiles
git add .
git commit -m "Update configuration"
git push
```

On the other machine:

```bash
cd ~/dotfiles
git pull
```

Because the configurations are symlinked, changes pulled into the repository become active immediately.

Reload Zsh after updating its configuration:

```bash
source ~/.zshrc
```

Restart Neovim if its configuration was updated.

## ✿ Important Notes

- Configurations are shared through Git; installed applications and binaries are not.
- Each machine needs its own installation of the required tools.
- Zoxide's directory history is local to each machine.
- fzf is required for the interactive `zz` picker.
- Nerd Fonts should be installed on the host terminal for proper icon rendering.
- Existing configurations should be backed up before linking.
- Machine-specific paths and settings should be avoided in shared configuration files.

---

<p align="center">
  <strong>✿ O>H>I>S>S>A>N>E</strong><br>
  <sub>Once a Dalton, always a Dalton.</sub>
</p>
