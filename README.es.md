# Dotfiles & Configs

## Paquetes
### pacman
- bat
- eza
- git
- btop
- fish
- gvfs
- sddm
- sway
- wofi
- bluez
- dunst
- kitty
- unzip
- neovim
- ranger
- swaybg
- thunar
- waybar
- blueman
- discord
- openssh
- ntfs-3g
- nwg-look
- starship
- swayidle
- fastfetch
- base-devel
- pavucontrol
- breeze-icons
- brightnessctl
- xdg-user-dirs
- xorg-xwayland
- ttf-firacode-nerd
- thunar-archive-plugin
- network-manager-applet

### yay
Para poder usar yay, primero tenemos que instalarlo
```bash
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si
```

- cava
- spotify
- brave-bin
- wdisplays
- swaylock-effects
- visual-studio-code-bin
- catppuccin-cursors-mocha
- catppuccin-gtk-theme-mocha
- papirus-folders-catppuccin-git

## Commandos
Genera y gestiona los directorios de usuario (Downloads, Pictures, etc...)
```bash
xdg-user-dirs-update
```

Habilitar el desktop manager
```bash
sudo systemctl enable sddm.service
```

Habilitar el servicio de bluetooth
```bash
sudo systemctl enable bluetooth.service
```
