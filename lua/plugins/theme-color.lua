return {
  -- {
  --   "sainnhe/gruvbox-material",
  --   lazy = false,
  --   priority = 1000,
  --   config = function()
  --     vim.g.gruvbox_material_background = "soft"
  --     vim.g.gruvbox_material_foreground = "original"
  --     vim.cmd([[colorscheme gruvbox-material]])
  --   end,
  -- },
  {
    "sainnhe/everforest",
    lazy = false,
    priority = 1000,
    config = function()
      vim.g.everforest_background = "medium"
      vim.cmd([[colorscheme everforest]])
    end,
  },
}
