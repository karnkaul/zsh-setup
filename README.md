# zsh-setup

zsh un/installer scripts for Arch (based) linux

## Usage

Clone the repository somewhere:

```
git clone https://github.com/karnkaul/zsh-setup
```

If already cloned, `cd` into the directory and:

```
git pull
```

To only clone the `HEAD` instead of the entire history, append `--depth=1`.

### Installation

Assuming the cloned-repo is in `./zsh-setup`, execute:

```
zsh_setup/install.sh
```

This will install `zsh`, several plugins, clone the [`powerlevel10k`](https://github.com/romkatv/powerlevel10k) theme into `$XDG_DATA_DIR`, and generate `$HOME/.zshrc`. It also installs `ttf-hack-nerd` which contains all the fancy symbols used by the theme.

After installation, run `zsh` to configure the theme. Run `p10k configure` anytime to configure it again.

<img width="752" height="291" alt="Screenshot_20260225_095123" src="https://github.com/user-attachments/assets/022ebd1d-db03-478f-9102-9acc6c02f255" />

If the icons don't render, change the font used by the terminal to `Hack Nerd Font Mono`.

To use `zsh` as the default shell, run `chsh` and enter `/usr/bin/zsh` as the path to the new shell. Or configure your desired terminal to use `zsh`.

### Uninstallation

Assuming the cloned-repo is in `./zsh-setup`, execute:

```
zsh_setup/uninstall.sh
```

This will uninstall `zsh` and its plugins and delete the theme from `$XDG_DATA_DIR`. It intentionally **does not** uninstall `ttf-hack-nerd`, as it may be being used by the terminal. To uninstall it manually, first make sure all terminals/configs are using a different font, then run:

```
sudo pacman -R ttf-hack-nerd
```

## Packages

For an up-to-date list, refer to [var.sh](src/vars.sh). As of `v1.3`, the list of packages this tool un/installs:

- [zsh](https://archlinux.org/packages/extra/x86_64/zsh/)
- [zsh-autocomplete](https://archlinux.org/packages/extra/any/zsh-autocomplete/)
- [zsh-autosuggestions](https://archlinux.org/packages/extra/any/zsh-autosuggestions/)
- [zsh-history-substring-search](https://archlinux.org/packages/extra/any/zsh-history-substring-search/)
- [zsh-syntax-highlighting](https://archlinux.org/packages/extra/any/zsh-syntax-highlighting/)
- [ttf-hack-nerd](https://archlinux.org/packages/extra/any/ttf-hack-nerd/)*

_* skipped by uninstaller_

## Misc

Contributions are welcome.

[Original repository](https://github.com/karnkaul/zsh-setup)
