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
- vlc
- mesa
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
- ddcutil
- discord
- openssh
- ntfs-3g
- nwg-look
- starship
- swayidle
- fastfetch
- base-devel
- mesa-demos
- mesa-utils
- pavucontrol
- breeze-icons
- brightnessctl
- xdg-user-dirs
- xorg-xwayland
- xf86-video-ati
- xf86-video-intel
- ttf-firacode-nerd
- power-profiles-daemon
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
- ttf-poppins
- waybar-updates
- sddm-sugar-dark
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

Descargamos la base de datos del extra repository (mesa-utils)
```bash
sudo pacman -Fy
```

Cargamos el modulo para controlar monitores externos
```bash
sudo modprobe i2c-dev
```

Habilitar el desktop manager
```bash
sudo systemctl enable sddm.service
```

Habilitar el servicio de bluetooth
```bash
sudo systemctl enable bluetooth.service
```

Habilitar el servicio manejo de perfiles de energía
```bash
sudo systemctl enable power-profiles-daemon.service
```
