local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
  -- bootstrap lazy.nvim
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
  spec = {
    -- add LazyVim and import its plugins
    { "LazyVim/LazyVim", import = "lazyvim.plugins" },
    -- import any extras modules here
    -- { import = "lazyvim.plugins.extras.vscode" },
    -- { import = "lazyvim.plugins.extras.coding.codeium" },
    -- { import = "lazyvim.plugins.extras.coding.copilot-chat" },
    -- { import = "lazyvim.plugins.extras.coding.copilot" },
    -- { import = "lazyvim.plugins.extras.coding.luasnip" },
    -- { import = "lazyvim.plugins.extras.coding.mini-comment" },
    -- { import = "lazyvim.plugins.extras.coding.mini-surround" },
    -- { import = "lazyvim.plugins.extras.coding.tabnine" },
    -- { import = "lazyvim.plugins.extras.coding.yanky" },
    { import = "lazyvim.plugins.extras.dap.core" },
    { import = "lazyvim.plugins.extras.dap.nlua" },
    -- { import = "lazyvim.plugins.extras.editor.aerial" },
    -- { import = "lazyvim.plugins.extras.editor.dial" },
    -- { import = "lazyvim.plugins.extras.editor.harpoon2" },
    -- { import = "lazyvim.plugins.extras.editor.illuminate" },
    -- { import = "lazyvim.plugins.extras.editor.inc-rename" },
    -- { import = "lazyvim.plugins.extras.editor.leap" },
    -- { import = "lazyvim.plugins.extras.editor.mini-diff" },
    -- { import = "lazyvim.plugins.extras.editor.mini-files" },
    -- { import = "lazyvim.plugins.extras.editor.mini-move" },
    -- { import = "lazyvim.plugins.extras.editor.navic" },
    -- { import = "lazyvim.plugins.extras.editor.outline" },
    -- { import = "lazyvim.plugins.extras.editor.refactoring" },
    { import = "lazyvim.plugins.extras.formatting.black" },
    { import = "lazyvim.plugins.extras.formatting.prettier" },
    -- { import = "lazyvim.plugins.extras.lang.angular" },
    -- { import = "lazyvim.plugins.extras.lang.ansible" },
    -- { import = "lazyvim.plugins.extras.lang.astro" },
    -- { import = "lazyvim.plugins.extras.lang.clangd" },
    { import = "plugins.extras.lang.clangd" }, -- localhost not resolving, so hard-code 127.0.0.1
    -- { import = "lazyvim.plugins.extras.lang.cmake" },
    -- { import = "lazyvim.plugins.extras.lang.docker" },
    -- { import = "lazyvim.plugins.extras.lang.elixir" },
    -- { import = "lazyvim.plugins.extras.lang.go" },
    -- { import = "lazyvim.plugins.extras.lang.haskell" },
    -- { import = "lazyvim.plugins.extras.lang.helm" },
    -- { import = "lazyvim.plugins.extras.lang.java" },
    { import = "lazyvim.plugins.extras.lang.json" },
    -- { import = "lazyvim.plugins.extras.lang.kotlin" },
    { import = "lazyvim.plugins.extras.lang.markdown" },
    -- { import = "lazyvim.plugins.extras.lang.nix" },
    -- { import = "lazyvim.plugins.extras.lang.nushell" },
    -- { import = "lazyvim.plugins.extras.lang.omnisharp" },
    -- { import = "lazyvim.plugins.extras.lang.python" },
    { import = "plugins.extras.lang.python" }, -- use system python-debugpy
    { import = "lazyvim.plugins.extras.lang.r" },
    { import = "lazyvim.plugins.extras.lang.ruby" },
    -- { import = "lazyvim.plugins.extras.lang.rust" },
    { import = "plugins.extras.lang.rust" }, -- use system codelldb
    -- { import = "lazyvim.plugins.extras.lang.scala" },
    -- { import = "lazyvim.plugins.extras.lang.svelte" },
    { import = "lazyvim.plugins.extras.lang.tailwind" },
    -- { import = "lazyvim.plugins.extras.lang.terraform" },
    { import = "lazyvim.plugins.extras.lang.tex" },
    { import = "lazyvim.plugins.extras.lang.toml" },
    -- { import = "lazyvim.plugins.extras.lang.typescript" },
    -- { import = "lazyvim.plugins.extras.lang.vue" },
    { import = "lazyvim.plugins.extras.lang.yaml" },
    { import = "lazyvim.plugins.extras.linting.eslint" },
    { import = "lazyvim.plugins.extras.lsp.neoconf" },
    { import = "lazyvim.plugins.extras.lsp.none-ls" },
    -- { import = "lazyvim.plugins.extras.test.core" },
    -- { import = "lazyvim.plugins.extras.ui.alpha" },
    -- { import = "lazyvim.plugins.extras.ui.edgy" },
    -- { import = "lazyvim.plugins.extras.ui.mini-animate" },
    -- { import = "lazyvim.plugins.extras.ui.mini-indentscope" },
    -- { import = "lazyvim.plugins.extras.ui.mini-starter" },
    -- { import = "lazyvim.plugins.extras.ui.treesitter-context" },
    -- { import = "lazyvim.plugins.extras.util.dot" },
    -- { import = "lazyvim.plugins.extras.util.gitui" },
    -- { import = "lazyvim.plugins.extras.util.mini-hipatterns" },
    -- { import = "lazyvim.plugins.extras.util.project" },
    -- { import = "lazyvim.plugins.extras.util.startuptime" },
    -- import/override with your plugins
    { import = "plugins" },
  },
  change_detection = {
    enabled = false,
    notify = false,
  },
  defaults = {
    -- By default, only LazyVim plugins will be lazy-loaded. Your custom plugins will load during startup.
    -- If you know what you're doing, you can set this to `true` to have all your custom plugins lazy-loaded by default.
    lazy = false,
    -- It's recommended to leave version=false for now, since a lot the plugin that support versioning,
    -- have outdated releases, which may break your Neovim install.
    version = false, -- always use the latest git commit
    -- version = "*", -- try installing the latest stable version for plugins that support semver
  },
  install = { colorscheme = { "nightfox" } },
  checker = { enabled = false }, -- automatically check for plugin updates
  performance = {
    rtp = {
      -- disable some rtp plugins
      disabled_plugins = {
        "gzip",
        -- "matchit",
        -- "matchparen",
        -- "netrwPlugin",
        "tarPlugin",
        "tohtml",
        "tutor",
        "zipPlugin",
      },
    },
  },
})
