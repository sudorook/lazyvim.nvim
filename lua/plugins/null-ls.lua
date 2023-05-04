return {
  {
    "jose-elias-alvarez/null-ls.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "mason.nvim" },
    opts = function(_, opts)
      local nls = require("null-ls")
      return {
        root_dir = require("null-ls.utils").root_pattern(
          ".null-ls-root",
          ".neoconf.json",
          "Makefile",
          ".git"
        ),
        sources = {
          nls.builtins.formatting.black.with({
            extra_args = { "-q", "-l", "79" },
          }),
          nls.builtins.formatting.clang_format.with({
            extra_args = { "-style", "mozilla" },
          }),
          nls.builtins.diagnostics.cppcheck,
          nls.builtins.diagnostics.flake8,
          nls.builtins.formatting.prettier.with({
            extra_args = { "--prose-wrap", "always" },
          }),
          nls.builtins.hover.printenv,
          nls.builtins.diagnostics.shellcheck,
          nls.builtins.formatting.shfmt.with({
            extra_args = { "-i", "2", "-ci", "-sr" },
          }),
          -- nls.builtins.formatting.stylua,
          nls.builtins.formatting.stylua.with({
            extra_args = {
              "--indent-type",
              "spaces",
              "--indent-width",
              "2",
              "--column-width",
              "80",
            },
          }),
          nls.builtins.formatting.styler,
          nls.builtins.formatting.trim_whitespace,
          nls.builtins.formatting.trim_newlines,
        },
      }
    end,
  },
}
