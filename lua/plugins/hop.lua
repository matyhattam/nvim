return {
  "phaazon/hop.nvim",
  branch = 'v2', -- optional but strongly recommended
  config = function()
    require 'hop'.setup {
      keys = 'etovxqpdygfblzhckisuran',
      multi_windows = true
    }
    local map = vim.api.nvim_set_keymap
    map('', 'f', "<cmd>lua require'hop'.hint_words({  })<cr>", {})
    map('', 'F', "<cmd>lua require'hop'.hint_anywhere({  })<cr>", {})
  end
}
