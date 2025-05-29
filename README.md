# ☕ .dotfiles

My Arch Linux dotfiles. This configuration uses `Wayland` as display protocol and `Hyprland` as compositor.

## 🪢 Dependencies

The only dependencies for the dotfiles installation are:

- git
- stow (GNU)

Aside from installation, here is the full dependencies list in case you want to exactly replicate my setting:

- hyprland
- hyprpaper
- hypridle
- hyprlock
- hyprpicker
- hyprpolkitagent
- hyprcursor
- pipewire
- wireplumber
- xdg-desktop-portal-hyprland
- udiskie
- waybar

***

- firefox
- zsh
- kitty
- thunar
- gnome-calculator
- fuzzel
- cliphist
- zsh

***

- mako

## 📌 My configuration

Due to my frequent use of both laptop and desktop environments, I encountered some trouble thinking of a way of centralising my dotfiles into one single repository, given that some dotfiles may vary from one system to another, but others might be common for both.

This concern can be easily understood with one simple example. Let some `waybar` configuration file. From the laptop's side, that config file should include items such as the battery icon, whereas from the desktop's side a battery icon would not make sense at all.

To mitigate this problem, I made some decisions on how to structure my dotfiles.

- Common dotfiles to all environments will remain the same inside GNU Stow naming conventions.

- For divergent dotfiles between environments, separate versions will be uploaded. For example, the `waybar` package will be indeed separated into two (or more) packages such as `waybar-laptop` and `waybar-desktop`. Despite being a bit redundant, this way highly improves usability.

With that being said, the full list of packages my configuration involves is detailed below.

### 🎳 List of packages

> [!NOTE]
> `C` for common, `L` and `D` for laptop and desktop versioning, respectively.

- hyprland (D)
- waybar (D)
- fuzzel (C)
- mako (C)
- zsh (C)
