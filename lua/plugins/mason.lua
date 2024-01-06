return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {},
      log_level = vim.log.levels.DEBUG,
      ui = {
        check_outdated_packages_on_open = false,
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      automatic_installation = false,
    },
  },
  {
    "jay-babu/mason-nvim-dap.nvim",
    opts = {
      automatic_installation = false,
      ensure_installed = {},
    },
  },
}
