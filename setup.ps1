# install scoop:
# Set-ExecutionPolicy -ExecutionPolicy RemoteSigned -Scope CurrentUser
# Invoke-RestMethod -Uri https://get.scoop.sh | Invoke-Expression

# scoop buckets
scoop bucket add extras
scoop bucket add nerd-fonts

# nerd font
scoop install nerd-fonts/Agave-NF-Mono

# starship
scoop install main/starship

# powershell
New-Item -ItemType SymbolicLink `
         -Path "$PROFILE" `
         -Target "$HOME\my-configs\powershell\profile.ps1"

# wezterm
scoop install wezterm
New-Item -ItemType SymbolicLink `
         -Path "$HOME\.wezterm.lua" `
         -Target "$HOME\my-configs\wezterm\.wezterm.lua"

# neovim
scoop install neovim

# git
scoop install git
# add symlink for git config here...
