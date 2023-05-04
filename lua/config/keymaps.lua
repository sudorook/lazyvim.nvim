-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set(
  "n",
  "<F3>",
  function()
    require("lazyvim.plugins.lsp.format").format({ force = true })
  end,
  { desc = "Format Document" }
)
