return {
  {
    "rcarriga/nvim-dap-ui",
    config = {
      layouts = {
        {
          elements = {
            { id = "scopes", size = 0.25 }, -- Can be float or integer > 1
            { id = "breakpoints", size = 0.25 },
            { id = "stacks", size = 0.25 },
            { id = "watches", size = 0.25 },
          },
          size = 40,
          position = "left", -- Can be "left" or "right"
        },
        {
          elements = {
            "repl",
            "console",
          },
          size = 20,
          position = "bottom", -- Can be "bottom" or "top"
        },
      },
    },
  },
}
