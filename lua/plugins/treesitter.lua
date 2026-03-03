return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  event = { "BufReadPost", "BufNewFile" },
  opts = {
    ensure_installed = {
      "java", "scala", "python", "bash",
      "lua", "vim", "vimdoc",
      "javascript", "typescript", "tsx",
    },
    highlight = { enable = true },
    indent = { enable = true },
  },
}
