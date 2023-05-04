return {
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "tokyonight",
      colorscheme = function(_, opts)
        require("nightfox").setup(opts)
        vim.cmd.colorscheme("nightfox")
        -- vim.api.nvim_set_hl(0, "Visual", { fg = "#87d7d7", bg = "#294040" })
        -- vim.api.nvim_set_hl(0, "VertSplit", { fg = "#29394f" })
        -- vim.api.nvim_set_hl(0, "VertSplit", { fg = "#39506d" })
      end,
    },
  },
}
