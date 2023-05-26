return {
  "akinsho/bufferline.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  event = "VeryLazy",
  keys = {
    { "<leader>p",  "<Cmd>BufferLineTogglePin<CR>",            desc = "Toggle pin" },
    { "<leader>dp", "<Cmd>BufferLineGroupClose ungrouped<CR>", desc = "Delete non-pinned buffers" },
    { "<leader>,",  "<cmd>BufferLineCyclePrev<cr>",            desc = "Prev buffer" },
    { "<leader>.",  "<cmd>BufferLineCycleNext<cr>",            desc = "Next buffer" },
  },
  version = "*",
  opts = {},
}
