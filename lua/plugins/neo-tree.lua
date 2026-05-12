return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  keys = {
    { "-", "<cmd>Neotree toggle<CR>", desc = "Toggle file tree" },
  },
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
      },
      hijack_netrw_behavior = "open_current",
    },
    window = {
      width = 35,
    },
  },
}
