return {
  {
    "numToStr/Comment.nvim",
    opts = {
      toggler = {
        line = "<leader>cc",
        block = "<leader>cb",
      },
      opleader = {
        line = "<leader>cc",
        block = "<leader>cb",
      },
      extra = {
        above = "<leader>c0",
        below = "<leader>co",
        eol = "<leader>cA",
      },
    },
    config = function(_, opts)
      require("Comment").setup(opts)
      vim.keymap.set(
        "n",
        "<leader>cy",
        "yy<Plug>(comment_toggle_linewise_current)", -- add `p` at end to print, too
        { desc = "Yank and toggle current line" }
      )
      vim.keymap.set(
        "x",
        "<leader>cy",
        "ygv<Plug>(comment_toggle_linewise_visual)`>", -- add `p` at end to print, too
        { desc = "Yank and toggle current selection" }
      )
    end,
  },
}
