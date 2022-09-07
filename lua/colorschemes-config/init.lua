vim.o.background = 'dark'
vim.cmd([[colorscheme gruvbox]])

require("gruvbox").setup({
    bold = false,
    italic = false,
    contrast = "soft", -- can be "hard", "soft" or empty string
})
vim.cmd("colorscheme gruvbox")
