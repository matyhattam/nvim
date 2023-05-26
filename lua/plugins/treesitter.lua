return {
  "nvim-treesitter/nvim-treesitter",
  config = function()
    local ts = require('nvim-treesitter.configs')

    ts.setup({
      enable = true,
      ensure_installed = {
        "bash",
        "cpp",
        "c",
        "css",
        "dockerfile",
        "graphql",
        "go",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "python",
        "rust",
        "scss",
        "sql",
        "svelte",
        "tsx",
        "yaml",
        "typescript",
      },

      highlight = { enable = true },
      indent = { enable = true },
      autotag = { enable = true },
    })
  end
}
