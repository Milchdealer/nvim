# nvim

Personal neovim configuration using [lazy.nvim](https://github.com/folke/lazy.nvim) as plugin manager.

## Setup

```bash
git clone git@github.com:Milchdealer/nvim.git ~/.config/nvim
```

First launch auto-installs lazy.nvim and all plugins.

## Plugins

| Plugin | Purpose |
|---|---|
| [oil.nvim](https://github.com/stevearc/oil.nvim) | File explorer — edit filesystem like a buffer |
| [fzf-lua](https://github.com/ibhagwan/fzf-lua) | Fuzzy finder for files, grep, buffers |
| [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) | LSP client configuration |
| [mason.nvim](https://github.com/williamboman/mason.nvim) | Auto-install LSP servers |
| [nvim-metals](https://github.com/scalameta/nvim-metals) | Scala/sbt support |
| [nvim-treesitter](https://github.com/nvim-treesitter/nvim-treesitter) | Syntax highlighting & indentation |
| [barbecue.nvim](https://github.com/utilyre/barbecue.nvim) | Winbar breadcrumbs (file path + LSP symbols) |
| [nvim-navic](https://github.com/SmiteshP/nvim-navic) | LSP symbol context for breadcrumbs |
| [nvim-web-devicons](https://github.com/nvim-tree/nvim-web-devicons) | File icons |
| [bookmarks.nvim](https://github.com/LintaoAmons/bookmarks.nvim) | Persistent line bookmarks with tree view |

## LSP Servers

Installed via Mason: `jdtls` (Java), `basedpyright` (Python), `bashls` (Bash), `ts_ls` (TypeScript).
Metals is configured separately for Scala/sbt.

## Keybindings

### General

| Key | Action |
|---|---|
| `Space` | Leader key |
| `Esc` | Clear search highlight |
| `Ctrl+h/j/k/l` | Navigate between windows |
| `Alt+LeftClick` | Go to definition (LSP) |

### File Navigation

| Key | Action |
|---|---|
| `-` | Open parent directory (oil.nvim) |
| `Space Space` | Find files |
| `Space f g` | Live grep |
| `Space f b` | Buffers |
| `Space f r` | Recent files |

### Bookmarks

| Key | Action |
|---|---|
| `mm` | Toggle bookmark on current line |
| `mo` | Open bookmarks tree |
| `mn` | Jump to next bookmark |
| `mp` | Jump to previous bookmark |
| `ma` | All bookmark commands |

## Settings

- 4-space indentation, smart indent
- Relative line numbers
- Case-insensitive search (smart case)
- System clipboard integration
- Persistent undo
- Mouse enabled
