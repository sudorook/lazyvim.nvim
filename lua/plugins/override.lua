return {
  -- from tex extra
  {
    "lervag/vimtex",
    keys = {
      { "<localLeader>l", false },
    },
  },
  -- from python extra
  {
    "sudorook/nvim-dap-python",
    lazy = true,
    dir = "~/Projects/neovim/nvim-dap-python",
    branch = "tweak",
  },
}
