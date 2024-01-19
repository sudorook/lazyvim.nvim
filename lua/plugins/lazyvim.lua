return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = function(_, opts)
        require("nightfox").setup(opts)
        vim.cmd.colorscheme("nightfox")
      end,
    },
  },
}
