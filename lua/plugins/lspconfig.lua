return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      diagnostics = {
        update_on_insert = true,
      },
      format = { timeout_ms = 10000 },
    },
  },
}
