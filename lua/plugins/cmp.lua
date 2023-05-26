-- Copy the auto completions section of LazyVim/lua/lazyvim/config/options.lua and disable <Up> and <Down> in the completions menu.
return {
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      opts.preselect = cmp.PreselectMode.None -- unnecessary?
      opts.completion = {
        completeopt = "menu,menuone,noselect,noinsert",
      }
      opts.mapping = vim.tbl_extend("force", opts.mapping, {
        -- ['<CR>'] = cmp.config.disable,
        ["<CR>"] = cmp.mapping.confirm({
          behavior = cmp.ConfirmBehavior.Insert,
          select = false,
        }),
        ["<Up>"] = cmp.mapping(function(fallback)
          cmp.close()
          fallback()
        end, { "i" }),
        ["<Down>"] = cmp.mapping(function(fallback)
          cmp.close()
          fallback()
        end, { "i" }),
      })

      -- cmp-dap
      cmp.setup({
        enabled = function()
          return vim.api.nvim_buf_get_option(0, "buftype") ~= "prompt"
            or require("cmp_dap").is_dap_buffer()
        end,
      })
      cmp.setup.filetype({ "dap-repl", "dapui_watches", "dapui_hover" }, {
        sources = {
          { name = "dap" },
        },
      })
    end,
    dependencies = {
      "rcarriga/cmp-dap",
    },
  },
}
