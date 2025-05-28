# ☕ .dotfiles

My Arch Linux dotfiles. This configuration uses `Wayland` as display protocol and `Hyprland` as compositor.

## 🪢 Dependencies

The only dependencies for the dotfiles installation are:

- `git`
- `stow (GNU)` 

Both can be installed via `pacman -S <package-name>`.

## ⏩ Quick installation

> [!IMPORTANT]
> It is recommended to read the full `README` file before following this steps. It is intendeed that the user is aware of how GNU Stow works as well as the way dotfailes are organised.

To install the dotfiles only a few steps are required.

- Clone this repo into your `$(HOME)` folder inside your system. I recommend using something like `dotfiles/` or `.dotfiles` for its name.

        $ git clone git@github.com:Alvinceleste2/.dotfiles.git

- Next, you must dive into the folder.
        
        $ cd .dotfiles

- Finally, it is as simple as executing this command to install the selected dotfiles into your system:

        $ stow <name-of-the-tool>


## 📌 My configuration

Due to my frequent use of both laptop and desktop environments, I encountered some trouble thinking of a way of centralising my dotfiles into one single repository, given that some dotfiles may vary from one system to another, but others might be common for both.

This concern can be easily understood with one simple example. Let some `waybar` configuration file. From the laptop's side, that config file should include items such as the battery icon, whereas from the desktop's side a battery icon would not make sense at all.

To mitigate this problem, I made some decisions on how to structure my dotfiles.

- Common dotfiles to all environments will remain the same inside GNU Stow's naming conventions.

- For divergent dotfiles between environments, separate versions will be uploaded. For example, the `waybar` package will be indeed separated into two (or more) packages such as `waybar-laptop` and `waybar-desktop`. Despite being a bit redundant, this way highly improves usability.

With that being said, the full list of programs my configuration involves is detailed below.

### 🎳 List of programs

> [!NOTE]
> `C` for common, `LD` for laptop and desktop versioning.

- hyprland (C)
    - hypr
    - hyprpaper

## 📦 GNU Stow

GNU Stow will be used to replicate system dotfiles to a centralised folder using symlinks. It lets you create and manage your dotfiles the easiest way. If you don't have any experience using GNU Stow, I recommend reading its [official documentation](https://www.gnu.org/software/stow/). Also, I encourage you to see [this video](https://www.youtube.com/watch?v=NoFiYOqnC4o) on how to use GNU Stow for this specific purpose. Credits to `typecraft` for doing it.

The following sections will not serve as a proper documentation on how to use the program but as a quick reference guide on some important things related to it.

### Naming convention

These are some examples as to how dotfiles must be named.

| Dotfile  | GNU Stow |
| ----------------- | -------------------- |
| ~/.config/nvim    | nvim/.config/nvim    |
| ~/.config/waybar  | waybar/.config/waybar|
| ~/.zshrc          | zsh/.zshrc           |

So, when using the command `stow nvim`, GNU Stow will load its `nvim` configuration files into your system using the route `~/.config/nvim`.


### GNU Stow default ignore file

    # Comments and blank lines are allowed.

    RCS
    .+,v

    CVS
    \.\#.+          # CVS conflict files / emacs lock files
    \.cvsignore

    \.svn
    \.hg

    \.git
    \.gitignore

    .+~             # emacs backup files
    \#.*\#          # emacs autosave files

    ^/README.*
    ^/LICENSE.*
    ^/COPYING
