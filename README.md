# ✿ Sakura Dotfiles

A personal, Sakura-inspired development environment built around a clean terminal, a customized shell, and a personalized Neovim setup.

Designed to stay consistent across my machines: Ubuntu on WSL2, my personal Linux environments, and 1337 school computers.

**One configuration. Multiple machines. One Sakura aesthetic.**

---

## ✿ Preview

### Color palette

| Name | Hex |
| --- | --- |
| Sakura | `#D995A6` |
| Petal | `#F0C5CE` |
| Cream | `#E9D9D5` |
| Wisteria | `#B99AC8` |
| Moss | `#A8B99A` |
| Muted | `#827681` |
| Red | `#C97986` |
| Cyan | `#91B8B5` |
| Background | `#111018` |
| Selection | `#493442` |

---

## ✿ Repository structure

```text
dotfiles/
├── bat/
│   └── .config/
│       └── bat/
│           ├── config
│           └── themes/
│               └── Sakura.tmTheme
├── fastfetch/
│   └── .config/
│       └── fastfetch/
│           ├── ascii/
│           │   └── txt.txt
│           └── config.jsonc
├── nvim/
│   └── .config/
│       └── nvim/
├── starship/
│   └── .config/
│       └── starship.toml
├── windows-terminal/
│   ├── README.md
│   ├── sakura-midnight.json
│   └── settings.json
├── zsh/
│   └── .zshrc
├── .gitignore
└── README.md
```

Each Linux configuration is organized as a GNU Stow package. This keeps the repository structured while allowing configurations to be linked into the home directory.

---

## ✿ Environment

| Component | Tool |
| --- | --- |
| Main environment | Ubuntu / WSL2 |
| Shell | Zsh |
| Shell framework | Oh My Zsh |
| Prompt | Starship |
| Editor | Neovim / LazyVim |
| Terminal | Windows Terminal |
| Font | JetBrainsMono Nerd Font |
| File listing | Eza |
| Navigation | Zoxide |
| Fuzzy finder | FZF |
| Syntax viewer | Bat |
| System information | Fastfetch |
| Dotfile management | GNU Stow |

The configuration is designed to be portable, but some components may need small adjustments depending on the Linux distribution, installed tools, fonts, and terminal.

---

## ✿ Configurations

### Zsh

- Oh My Zsh integration
- Git, autosuggestions, and syntax-highlighting plugins
- Sakura-colored Eza output
- Custom aliases and Git shortcuts
- Zoxide navigation
- FZF integration
- Starship prompt initialization
- Fastfetch on startup
- Dotfiles review workflow

### Starship

A custom prompt configuration with a minimal Sakura-inspired appearance.

### Eza

Enhanced directory listing with icons and custom colors.

| Alias | Description |
| --- | --- |
| `ls` | Eza listing |
| `ll` | Detailed listing |
| `la` | Show hidden files |
| `lt` | Shallow tree |
| `tree` | Tree view |
| `ree` | Detailed tree, excluding `.git` |

### FZF

- Sakura color scheme
- Rounded borders
- Reverse layout
- 80% terminal height
- Zsh integration

### Bat

- Custom Sakura syntax theme
- Line numbers
- Git change indicators
- Header information
- Italic text

### Fastfetch

- Custom ASCII logo
- Hardware and software information
- System information

Some system-specific modules may need adjustment outside WSL2.

### Neovim

- LazyVim-based configuration
- Custom Sakura colorscheme
- Personal Lua configuration and plugins

### Windows Terminal

An optional Windows-specific configuration featuring:

- Sakura Midnight color scheme
- JetBrainsMono Nerd Font
- Acrylic background
- Custom opacity and cursor
- Ubuntu profile
- Custom keyboard shortcuts

The reusable color scheme is provided separately in `windows-terminal/sakura-midnight.json`. You do not need to replace your entire Windows Terminal settings file to use it.

---

## ✿ Useful aliases

| Alias | Description |
| --- | --- |
| `v`, `vim`, `vi`, `nv` | Open Neovim |
| `dots` | Navigate to dotfiles |
| `croot` | Navigate to 1337 directory |
| `..`, `...`, `....` | Navigate up directories |
| `gs` | Git status |
| `ga` | Git add |
| `gc` | Git commit |
| `gp` | Git push |
| `gd` | Git diff |
| `gl` | Git graph log |
| `z` | Zoxide directory search |
| `zz` | Interactive Zoxide search |

---

## ✿ Installation

### 1. Requirements

Install the tools you want to use on your machine:

- Git
- Zsh
- GNU Stow

The other tools are optional, but the corresponding features require them:

- Oh My Zsh
- Starship
- Eza
- Bat
- Fastfetch
- FZF
- Zoxide
- Neovim

The Zsh configuration checks for most optional commands before initializing them. Oh My Zsh plugins must be installed separately.

### 2. Clone the repository

Using SSH:

```bash
git clone git@github.com:hissaneomaradam/dotfiles.git ~/dotfiles
```

Or using HTTPS:

```bash
git clone https://github.com/hissaneomaradam/dotfiles.git ~/dotfiles
```

### 3. Back up existing configurations

Before linking anything, back up existing configuration files and directories that could conflict with Stow.

For example:

```bash
mkdir -p ~/dotfiles-backup
cp -a ~/.zshrc ~/dotfiles-backup/ 2>/dev/null || true
```

Also check `~/.config` for existing `nvim`, `starship.toml`, `fastfetch`, and `bat` configurations.

### 4. Link configurations

From the repository directory:

```bash
cd ~/dotfiles

stow -t "$HOME" zsh
stow -t "$HOME" starship
stow -t "$HOME" fastfetch
stow -t "$HOME" nvim
stow -t "$HOME" bat
```

Stow creates symbolic links from the repository into your home directory.

If Stow reports a conflict, inspect the existing file before moving or replacing it. Do not blindly overwrite personal configurations.

### 5. Reload Zsh

```bash
source ~/.zshrc
```

Restart your terminal if necessary.

### 6. Windows Terminal (optional)

Windows Terminal configuration is separate from GNU Stow.

To use Sakura Midnight:

1. Open Windows Terminal.
2. Go to Settings.
3. Select **Open JSON file**.
4. Add the contents of `windows-terminal/sakura-midnight.json` to your existing `schemes` array.
5. Save the file.
6. Select **Sakura Midnight** in your profile's Appearance settings.

See [`windows-terminal/README.md`](windows-terminal/README.md) for details.

---

## ✿ Syncing across devices

This repository is public and intended to be shared across machines.

### First machine

Make your changes inside `~/dotfiles`, then review them:

```bash
cd ~/dotfiles
git status
git diff
```

Add, commit, and push the changes you want to share:

```bash
git add .
git commit -m "Update dotfiles"
git push
```

### Another machine

Pull the latest changes:

```bash
cd ~/dotfiles
git pull
```

Stow links already point to the repository, so changes to linked files become available immediately. Reload the relevant application or shell when needed.

### Important

Avoid editing the same configuration independently on multiple machines without syncing first. Pull before making changes and resolve Git conflicts before pushing.

---

## ✿ Dotfiles workflow

The `dot` function provides a quick repository review:

```bash
dot
```

It:

1. Enters the dotfiles repository.
2. Displays Git status.
3. Displays tracked changes.
4. Lists untracked files.

It does **not** stage, commit, or push anything. Review the changes and run Git commands manually when you're ready.

---

## ✿ Removing configurations

GNU Stow can unlink a package without deleting the files in the repository:

```bash
cd ~/dotfiles
stow -D -t "$HOME" zsh
```

Replace `zsh` with the package you want to unlink.

---

## ✿ Philosophy

- Keep the environment clean and minimal.
- Keep configurations portable across machines.
- Prefer customization over unnecessary dependencies.
- Maintain a consistent Sakura aesthetic.
- Make development comfortable and productive.
- Keep the setup suitable for development and 1337 Common Core work.

---

## ✿ Credits

Built and maintained by [@hissaneomaradam](https://github.com/hissaneomaradam).

**Once a Dalton, always a Dalton.** ✿
