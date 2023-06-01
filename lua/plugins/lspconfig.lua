return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      autoformat = false,
      diagnostics = {
        update_on_insert = true,
      },
      format = { timeout_ms = 10000 },
      setup = {
        clangd = function(_, opts)
          opts.capabilities.offsetEncoding = { "utf-16" }
        end,
      },
      servers = {
        bashls = { mason = false },
        clangd = { mason = false },
        cssls = { mason = false },
        html = { mason = false },
        jsonls = { mason = false },
        lua_ls = {
          mason = false,
          settings = {
            Lua = {
              diagnostics = { globals = { "vim" } },
            },
          },
        },
        pyright = { mason = false },
        r_language_server = { mason = false },
        rust_analyzer = { mason = false },
        tsserver = { mason = false },
      },
    },
  },
}
