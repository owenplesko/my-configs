
#!/bin/sh

# ---- Homebrew install check ----
if ! command -v brew >/dev/null 2>&1; then
  echo "Homebrew not found. Installing..."
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# ---- Install packages ----

# GCC
brew install gcc

# Nerd font: Agave NF Mono
brew install --cask font-agave-nerd-font

# Starship prompt
brew install starship

# WezTerm
brew install --cask wezterm

# Neovim
brew install neovim

# Git
brew install git

# ---- Symlinks ----

CONFIG_DIR="$HOME/my-configs"

# WezTerm config
ln -sf "$CONFIG_DIR/wezterm/.wezterm.lua" "$HOME/.wezterm.lua"

# Zsh config
ln -sf "$CONFIG_DIR/zsh/.zshrc" "$HOME/.zshrc"


# Neovim config
mkdir -p "$HOME/.config"
rm -rf "$HOME/.config/nvim"
ln -sf "$CONFIG_DIR/nvim" "$HOME/.config/nvim"
