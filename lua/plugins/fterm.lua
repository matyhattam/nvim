return {
  "numToStr/FTerm.nvim",
  config = function()
    require("FTerm").setup({
      dimensions = {
        height = 0.85,
        width = 0.85,
      },
    })
  end,
  keys = {
    { "`", '<CMD>lua require("FTerm").toggle()<CR>', desc = "Toggle terminal" },
    {
      "`",
      '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>',
      mode = "t",
      desc = "Toggle terminal",
    },
    -- {
    --   "<ESC><ESC>",
    --   "<C-\\><C-n>",
    --   mode = "t",
    --   desc = "Terminal normal mode",
    -- },
  },
}
