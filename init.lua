-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Tabs & indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Search
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- Appearance
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.cursorline = true
vim.opt.scrolloff = 8

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Misc
vim.opt.clipboard = "unnamedplus"
vim.opt.undofile = true
vim.opt.updatetime = 250
vim.opt.mouse = "a"
vim.opt.showmode = false
vim.opt.wrap = false

-- Auto-reload files changed externally (e.g. by Claude Code)
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
  command = "checktime",
})

-- Clear search highlight with Esc
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Alt+click to go to definition
vim.keymap.set("n", "<A-LeftMouse>", "<LeftMouse><cmd>lua vim.lsp.buf.definition()<CR>")

-- Mouse back/forward to navigate jump list
vim.keymap.set("n", "<X1Mouse>", "<C-o>")
vim.keymap.set("n", "<X2Mouse>", "<C-i>")

-- Window navigation
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git", "clone", "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

local function apply_custom_highlights()
  -- Bold orange keywords (treesitter)
  vim.api.nvim_set_hl(0, "@keyword", { fg = "#FF9E3B", bold = true })
  vim.api.nvim_set_hl(0, "@keyword.modifier", { fg = "#FF9E3B", bold = true })
  vim.api.nvim_set_hl(0, "@keyword.type", { fg = "#FF9E3B", bold = true })
  vim.api.nvim_set_hl(0, "@keyword.return", { fg = "#FF9E3B", bold = true })
  vim.api.nvim_set_hl(0, "@keyword.conditional", { fg = "#FF9E3B", bold = true })
  vim.api.nvim_set_hl(0, "@keyword.repeat", { fg = "#FF9E3B", bold = true })
  vim.api.nvim_set_hl(0, "@keyword.exception", { fg = "#FF9E3B", bold = true })
  vim.api.nvim_set_hl(0, "@keyword.import", { fg = "#FF9E3B", bold = true })
  vim.api.nvim_set_hl(0, "@type.builtin", { fg = "#FF9E3B", bold = true })
  vim.api.nvim_set_hl(0, "@type.qualifier", { fg = "#FF9E3B", bold = true })
  vim.api.nvim_set_hl(0, "Keyword", { fg = "#FF9E3B", bold = true })
  vim.api.nvim_set_hl(0, "Statement", { fg = "#FF9E3B", bold = true })

  -- Legacy Vim keyword groups
  vim.api.nvim_set_hl(0, "PreProc", { fg = "#FF9E3B", bold = true })

  -- Bold orange keywords (LSP semantic tokens)
  vim.api.nvim_set_hl(0, "@lsp.type.modifier", { fg = "#FF9E3B", bold = true })
  vim.api.nvim_set_hl(0, "@lsp.type.keyword", { fg = "#FF9E3B", bold = true })

  -- Single-line comments: grey / Multi-line comments: dark green
  vim.api.nvim_set_hl(0, "@comment", { fg = "#7A7A7A", italic = true })
  vim.api.nvim_set_hl(0, "Comment", { fg = "#7A7A7A", italic = true })
  vim.api.nvim_set_hl(0, "@comment.block", { fg = "#2E7D32", italic = true })
  vim.api.nvim_set_hl(0, "@comment.documentation", { fg = "#2E7D32", italic = true })
end

vim.api.nvim_create_autocmd({ "ColorScheme", "VimEnter" }, {
  group = vim.api.nvim_create_augroup("CustomHighlights", { clear = true }),
  callback = apply_custom_highlights,
})
apply_custom_highlights()
