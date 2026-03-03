return {
  "LintaoAmons/bookmarks.nvim",
  tag = "3.2.0",
  dependencies = {
    "kkharji/sqlite.lua",
  },
  config = function()
    require("bookmarks").setup({})
    vim.keymap.set("n", "mm", "<cmd>BookmarksMark<cr>", { desc = "Toggle bookmark" })
    vim.keymap.set("n", "mo", "<cmd>BookmarksTree<cr>", { desc = "Bookmarks tree" })
    vim.keymap.set("n", "mn", "<cmd>BookmarksGotoNext<cr>", { desc = "Next bookmark" })
    vim.keymap.set("n", "mp", "<cmd>BookmarksGotoPrev<cr>", { desc = "Previous bookmark" })
    vim.keymap.set("n", "ma", "<cmd>BookmarksCommands<cr>", { desc = "Bookmark commands" })
  end,
}
