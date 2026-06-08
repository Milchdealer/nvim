return {
  cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/OmniSharp"), "--languageserver" },
  filetypes = { "cs" },
  root_markers = { "*.sln", "*.csproj", ".git" },
}
