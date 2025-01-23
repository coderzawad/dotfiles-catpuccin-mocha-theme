
# Dotfiles (Catppuccin Mocha Theme)

## Installation Guide

Follow the steps below to set up your system with the Catppuccin Mocha theme.

### Dependencies

Ensure the following dependencies are installed on your system:

- **Hyprland**: A dynamic tiling Wayland compositor.
- **Kitty**: A feature-rich GPU-based terminal emulator.
- **Waybar**: A highly customizable Wayland bar.
- **Hyprlock**: A simple and elegant lockscreen for Hyprland.
- **Hyprshot**: A screenshot utility for Hyprland. *(Clone the hyprshot github repository to your home folder)*
- **Rofi**: A window switcher, application launcher, and dmenu replacement.
- **Wlogout**: A graphical logout menu.
- **Hyprpaper**: A wallpaper manager for Hyprland.
- **Swaync**: A notification daemon for Wayland.
- **Starship**: A minimal, blazing-fast shell prompt.

### Recommended Programs

- **Tmux**: A terminal multiplexer for managing multiple terminal sessions.
- **Neovim**: A modern, extensible text editor.

### Applying Backgrounds

To apply the provided backgrounds, run:

```bash
stow backgrounds
```

### Applying Dotfiles

Clone the dotfiles repository to your local machine:

```bash
git clone https://github.com/coderzawad/dotfiles-catpuccin-mocha-theme.git
```

Use `stow` to apply the dotfiles for each component:

```bash
stow hyprland
stow rofi
stow swaync
stow starship
stow nvim
stow wlogout
stow waybar
stow kitty
```

### Notes

- Ensure all dependencies are installed before applying the dotfiles to avoid errors.
- Customize the configuration files as needed to match your preferences.
- If you encounter any issues, check the documentation for the respective tool or repository.

---

Enjoy your Catppuccin Mocha-themed setup!


