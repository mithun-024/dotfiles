# Mithun's Dotfiles 🌌

Personal dotfiles managed with [chezmoi](https://www.chezmoi.io/), featuring **Caelestia Shell**, **Hyprland**, and a unified aesthetic environment.

---

## 🎨 Overview & Components

- **Compositor**: [Hyprland](https://hyprland.org/) (`~/.config/hypr`)
- **Desktop Shell**: [Caelestia](https://github.com/caelestia-dots/caelestia) (`~/.config/caelestia`, `~/.local/state/caelestia`)
- **Status Bar / Panels**: Noctalia (`~/.config/noctalia`)
- **Shell**: Fish (`~/.config/fish`) & Starship prompt (`~/.config/starship.toml`)
- **Terminals**: Kitty (`~/.config/kitty`), Foot (`~/.config/foot`), Alacritty (`~/.config/alacritty`)
- **Application Launcher**: Fuzzel (`~/.config/fuzzel`)
- **System Monitors**: Btop (`~/.config/btop`), Htop (`~/.config/htop`), Nvtop (`~/.config/nvtop`)
- **Audio Visualizer**: Cava (`~/.config/cava`)
- **Screenshot Tool**: Satty (`~/.config/satty`)
- **Editors**: Neovim (`~/.config/nvim`), Zed (`~/.config/zed`), VS Code / VSCodium, Micro (`~/.config/micro`)
- **Theming & Look**: GTK 3/4 (`adw-gtk3`), QtEngine / Qt5ct / Qt6ct, Bibata-Modern-Ice cursors
- **Wallpapers**: `~/Pictures/Wallpapers`
- **Custom Scripts & Services**:
  - `~/.local/bin/caelestia-kitty-colors`
  - `~/.local/bin/caelestia-kitty-watch`
  - `~/.local/bin/caelestia-wallpaper`
  - `~/.local/bin/hypr-power-refresh`
  - `~/.config/systemd/user/caelestia-kitty-watch.service`
  - `~/.config/systemd/user/hypr-power-refresh.service`

---

## 🚀 How to Restore / Revert

If you experiment with other dotfiles or install a new system, you can restore your exact setup anytime:

### 1. Install Chezmoi
```bash
sudo pacman -S chezmoi git
```

### 2. Initialize & Apply Dotfiles
Using SSH:
```bash
chezmoi init --apply git@github.com:mithun-024/dotfiles.git
```
Or using HTTPS:
```bash
chezmoi init --apply https://github.com/mithun-024/dotfiles.git
```

If chezmoi is already initialized on this machine:
```bash
chezmoi update
# or
chezmoi apply
```

### 3. Reinstall System & AUR Packages (if needed)
```bash
# Install native packages
sudo pacman -S --needed - < ~/.local/share/chezmoi/packages-native.txt

# Install AUR packages (using paru or yay)
paru -S --needed - < ~/.local/share/chezmoi/packages-aur.txt
```

### 4. Enable Background User Services
```bash
systemctl --user daemon-reload
systemctl --user enable --now caelestia-kitty-watch.service
systemctl --user enable --now hypr-power-refresh.service
```

### 5. Re-apply Caelestia Wallpaper & Color Palette
```bash
caelestia wallpaper -f ~/Pictures/Wallpapers/wallhaven-e88x6r_2560x1440.png
```

---

## 📦 Managing Dotfiles with Chezmoi

- **Edit a file**: `chezmoi edit ~/.config/hypr/hyprland.lua`
- **Add or update tracked files**: `chezmoi add <path>`
- **See pending differences**: `chezmoi diff`
- **Apply changes to system**: `chezmoi apply`
- **Commit & push updates**:
  ```bash
  chezmoi cd
  git add .
  git commit -m "Update config"
  git push origin main
  ```
