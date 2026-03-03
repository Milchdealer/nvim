return {
  "tomasky/bookmarks.nvim",
  dependencies = { "kkharji/sqlite.lua" },
  event = "VimEnter",
  config = function()
    require("bookmarks").setup({
      save_file = vim.fn.expand("$HOME/.bookmarks"),
      keywords = {
        ["@t"] = "☑️ ",  -- Todo
        ["@w"] = "⚠️ ",  -- Warn
        ["@f"] = "⛏ ",  -- Fix
        ["@n"] = "📓 ",  -- Note
      },
    })
    vim.keymap.set("n", "mm", require("bookmarks").bookmark_toggle, { desc = "Toggle bookmark" })
    vim.keymap.set("n", "mi", require("bookmarks").bookmark_ann, { desc = "Annotate bookmark" })
    vim.keymap.set("n", "mn", require("bookmarks").bookmark_next, { desc = "Next bookmark" })
    vim.keymap.set("n", "mp", require("bookmarks").bookmark_prev, { desc = "Previous bookmark" })
    vim.keymap.set("n", "ml", require("bookmarks").bookmark_list, { desc = "List bookmarks (quickfix)" })
    vim.keymap.set("n", "mc", require("bookmarks").bookmark_clean, { desc = "Clean bookmarks in buffer" })
  end,
}
