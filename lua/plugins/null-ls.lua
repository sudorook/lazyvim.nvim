return {
  {
    "nvimtools/none-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mason.nvim" },
    opts = function(_, opts)
      require("lazyvim.util").lsp.on_attach(function(client, bufnr)
        if client.name == "null-ls" then
          if
            not require("null-ls.generators").can_run(
              vim.bo[bufnr].filetype,
              require("null-ls.methods").lsp.FORMATTING
            )
          then
            vim.bo[bufnr].formatexpr = nil
          end
        end
      end)

      local nls = require("null-ls")
      return {
        root_dir = require("null-ls.utils").root_pattern(
          ".null-ls-root",
          ".neoconf.json",
          "Makefile",
          ".git"
        ),
        sources = {
          nls.builtins.diagnostics.cppcheck,
          nls.builtins.diagnostics.selene,
          nls.builtins.formatting.rufo,
        },
      }
    end,
  },
}
