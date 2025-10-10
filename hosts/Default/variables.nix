{
  # User Configuration
  username = "fedox"; # Your username (auto-set with install.sh, live-install.sh, rebuild)
  desktop = "hyprland"; # Options: hyprland, i3-gaps, gnome, plasma6
  terminal = "kitty"; # Options: kitty, alacritty
  editor = "vscode"; # Options: nixvim, vscode, helix, nvchad, neovim, emacs (WIP)
  browser = "zen"; # Options: firefox, floorp, zen
  tuiFileManager = "yazi"; # Options: yazi, lf
  sddmTheme = "hyprland_kath"; # Options: astronaut, black_hole, purple_leaves, jake_the_dog, hyprland_kath
  defaultWallpaper = "kurzgesagt.webp"; # to change wallpaper: SUPER + SHIFT + W
  hyprlockWallpaper = "kurzgesagt-galaxies.webp"; # See modules/themes/wallpapers for options
  shell = "zsh"; # Options: zsh, bash
  games = true; # Whether to enable the gaming module

  # Hardware Configuration
  videoDriver = "intel"; # CRITICAL: Choose your GPU driver (nvidia, amdgpu, intel)
  hostname = "Luna"; # Your system hostname

  # Localization
  clock24h = true; # 24H or 12H clock in waybar
  locale = "en_GB.UTF-8"; # System locale
  timezone = "Europe/Berlin"; # Your timezone
  kbdLayout = "gb"; # Keyboard layout
  kbdVariant = "extd"; # Keyboard variant (can be empty)
  consoleKeymap = "uk"; # TTY keymap
}
