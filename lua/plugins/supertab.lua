return {
  {
    "Saghen/blink.cmp",
    opts = {
      completion = {
        list = {
          selection = {
            preselect = false,
            auto_insert = true,
          },
        },
      },
      keymap = {
        preset = "enter",
        ["<Up>"] = {},
        ["<Down>"] = {},
        ["<Tab>"] = { "select_next", "fallback" },
        ["<S-Tab>"] = { "select_prev", "fallback" },
      },
    },
  },
}
