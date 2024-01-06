return {
  {
    "stevearc/conform.nvim",
    opts = {
      format_on_save = nil,
      format_after_save = nil,
      formatters = {
        black = {
          args = {
            "--stdin-filename",
            "$FILENAME",
            "--quiet",
            "-l",
            "79",
            "-",
          },
        },
        clang_format = {
          args = { "-style", "mozilla", "-assume-filename", "$FILENAME" },
        },
        prettier = {
          args = {
            "--prose-wrap",
            "always",
            "--config-precedence",
            "file-override",
            "--ignore-path",
            ".prettierignore",
            "--stdin-filepath",
            "$FILENAME",
          },
        },
        shfmt = {
          args = { "-i", "2", "-ci", "-kp", "-sr", "-filename", "$FILENAME" },
        },
        stylua = {
          args = {
            "--indent-type",
            "spaces",
            "--indent-width",
            "2",
            "--column-width",
            "80",
            "--search-parent-directories",
            "--stdin-filepath",
            "$FILENAME",
            "-",
          },
        },
        latexindent = {
          args = { "-g", "/dev/null", "-" },
        },
      },
    },
  },
}
