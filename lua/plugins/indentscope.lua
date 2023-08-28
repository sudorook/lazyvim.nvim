return {
  {
    "echasnovski/mini.indentscope",
    opts = {
      draw = {
        delay = 0,
        animation = require("mini.indentscope").gen_animation.none(),
      },
    },
    init = function()
      vim.api.nvim_create_autocmd("Filetype", {
        pattern = { "text", "markdown" },
        callback = function()
          vim.b.miniindentscope_disable = true
        end,
      })
    end,
  },
}
