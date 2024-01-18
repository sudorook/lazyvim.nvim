-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"
vim.g.autoformat = false
vim.b.autoformat = false
vim.opt.mouse = ""
vim.lsp.buf.format({ timeout_ms = 30000 })
vim.opt.conceallevel = 0
vim.opt.confirm = false
