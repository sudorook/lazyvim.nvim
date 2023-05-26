return {
  {
    "mfussenegger/nvim-dap",
    config = function()
      -- Copied from lazyvim's dap core.lua config() function. The default
      -- config file defines a function for the config field, which is
      -- overridden here.
      local Config = require("lazyvim.config")
      vim.api.nvim_set_hl(
        0,
        "DapStoppedLine",
        { default = true, link = "Visual" }
      )
      for name, sign in pairs(Config.icons.dap) do
        sign = type(sign) == "table" and sign or { sign }
        vim.fn.sign_define("Dap" .. name, {
          text = sign[1],
          texthl = sign[2] or "DiagnosticInfo",
          linehl = sign[3],
          numhl = sign[3],
        })
      end

      local dap = require("dap")

      -- C/C++
      dap.adapters.codelldb = {
        type = "server",
        port = "${port}",
        executable = {
          command = "/usr/bin/codelldb",
          args = { "--port", "${port}" },
        },
      }
      dap.adapters.lldb = {
        type = "executable",
        command = "/usr/bin/lldb-vscode",
        name = "lldb",
      }
      dap.configurations.cpp = {
        {
          name = "Launch",
          -- type = "lldb",
          type = "codelldb",
          request = "launch",
          program = function()
            return vim.fn.input(
              "Path to executable: ",
              vim.fn.getcwd() .. "/",
              "file"
            )
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
          showDisassembly = "never",
          args = {},
        },
      }
      dap.configurations.c = dap.configurations.cpp

      -- Rust
      dap.configurations.rust = {
        {
          name = "Launch",
          -- type = "rt_lldb",
          type = "codelldb",
          request = "launch",
          program = function()
            vim.fn.jobstart("cargo build")
            return vim.fn.input(
              "Path to executable: ",
              vim.fn.getcwd() .. "/target/debug/",
              "file"
            )
          end,
          cwd = "${workspaceFolder}",
          stopOnEntry = false,
          args = {},
        },
      }
    end,
  },
  {
    "sudorook/nvim-dap-python",
    dir = "~/Projects/neovim/nvim-dap-python",
    branch = "tweak",
    config = function()
      require("dap-python").setup("python")
    end,
    dependencies = { "mfussenegger/nvim-dap" },
  },
}
