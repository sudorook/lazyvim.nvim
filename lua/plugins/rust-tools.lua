return {
  {
    "simrat39/rust-tools.nvim",
    opts = {
      dap = {
        adapter = function()
          require("rust-tools.dap").get_codelldb_adapter(
            "/usr/lib/codelldb/adapter/codelldb",
            "/usr/lib/codelldb/adapter/libcodelldb.so"
          )
        end,
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "mfussenegger/nvim-dap",
      "neovim/nvim-lspconfig",
    },
  },
}
