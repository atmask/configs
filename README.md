# Configs

A repo containing my configs for tools in my workspaces

## Installation

To install on a new machine:

```bash
git clone git@github.com:atmask/configs.git

ln -s ./configs/nvim ~/.config/nvim
ln -s ./configs/kitty ~/.config/kitty
```

## Nvim

My nvim configurations. There are a couple of dependencies that need to be installed before using this configuration.

### Pre-requisites:

- `neovim` ^0.10.0 (Using 0.11.0 requires changes `mason` and `mason-lspconfig` v2)
- nerd font installed on terminal (eg. firacode or font-meslo-lg-nerd-font)
- `ripgrep` installed

> When using the configuration for the first time, run `:Lazy` and then 'I' in the modal to install all the plugins.

## Kitty

Configs are also included for the kitty terminal emulator

# Keymaps

## NVim

**Explorer**

- `spc + ee`: Toggle File Explorer
- `spc + ef`: Open file Explorer at current file
- `spc + er`: Refresh File Explorer

**Search (Telescope)**

- `spc + ff`: Find file
- `spc + fs`: Find string
- `spc + fc`: Find string under cursor
- `spc + fr`: Search in recent files
- `spc + ft`: Find TODOs / Anchor comments (e.g. BUG, HACK, TODO)

**Navigation**

- `<C-o>`: Forward through telescope history
- `<C-i>`: Backward through telescope history

**Tabs**

- `spc + to`: Open new tab
- `spc + tx`: Close tab
- `spc + tn`: Next tab
- `spc + tp`: Previous tab
- `spc + tf`: Open current buffer in new tab

**Splits**

- `spc + sh`: Split horizontal
- `spc + sv`: Split vertical
- `spc + sm`: Toggle maximize split
- `spc + sx`: Close split
- `spc + se`: Make splits equal

## Kitty

- `cmd+t`: New tab
- `cmd+w`: Close tab
- `cmd+^+[`: Previous Tab
- `cmd+^+]`: Next tab
- `cmd+^+i`: Rename tab
- `ctrl+^+,`: Move tab left
- `ctrl+^+.`: Move tab right
