return {
  "echasnovski/mini.indentscope",
  version = "*",
  config = function()
    require("mini.indentscope").setup({
      draw = {
        priority = 2,
      },
      symbol = "|",
    })
  end,
}
