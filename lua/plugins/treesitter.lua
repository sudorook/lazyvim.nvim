return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      auto_install = true,
      indent = {
        enable = true,
      },
      ensure_installed = {
        "dap_repl",
      },
    },
    config = function(_, opts)
      require("nvim-dap-repl-highlights").setup()
      require("nvim-treesitter.configs").setup(opts)
    end,
    dependencies = { "LiadOz/nvim-dap-repl-highlights" },
  },
}
