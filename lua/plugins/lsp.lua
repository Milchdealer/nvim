return {
  {
    "williamboman/mason.nvim",
    opts = {},
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      ensure_installed = {
        "clangd",
        "jdtls",
        "pyright",
        "bashls",
        "ts_ls",
        "rust_analyzer",
        "zls",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "SmiteshP/nvim-navic" },
    config = function()
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if client and client.server_capabilities.documentSymbolProvider then
            require("nvim-navic").attach(client, args.buf)
          end
        end,
      })
      vim.lsp.enable({
        "clangd",
        "jdtls",
        "pyright",
        "bashls",
        "ts_ls",
        "rust_analyzer",
        "zls",
        "omnisharp",
      })
    end,
  },
}
