return {
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      -- add a keymap to browse plugin files
      {
        "<leader>fp",
        function()
          require("telescope.builtin").find_files({
            cwd = require("lazy.core.config").options.root,
          })
        end,
        desc = "Find Plugin File",
      },
    },
    -- change some options
    opts = {
      defaults = {
        layout_strategy = "horizontal",
        layout_config = { prompt_position = "top" },
        sorting_strategy = "ascending",
        winblend = 0,
        -- mappings = {
        --   i = {
        --     ["<PgUp>"] = function(...)
        --       return require("telescope.actions").results_scrolling_up(...)
        --     end,
        --     ["<PgDown>"] = function(...)
        --       return require("telescope.actions").results_scrolling_down(...)
        --     end,
        --     ["<Home>"] = function(...)
        --       return require("telescope.actions").move_to_top(...)
        --     end,
        --     ["<End>"] = function(...)
        --       return require("telescope.actions").move_to_bottom(...)
        --     end,
        --   },
        -- },
      },
    },
    dependencies = {
      { "nvim-lua/plenary.nvim" },
      {
        "nvim-telescope/telescope-fzf-native.nvim",
        build = "make",
        config = function()
          require("telescope").load_extension("fzf")
        end,
      },
    },
  },
  {
    "nvim-telescope/telescope-dap.nvim",
    config = true,
  },
}
