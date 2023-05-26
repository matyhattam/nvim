return {
  "neovim/nvim-lspconfig",

  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "hrsh7th/cmp-nvim-lsp",
  },

  config = function()
    -- Base
    local mason = require("mason")
    local mason_lsp_config = require("mason-lspconfig")
    local lsp = require("lspconfig")
    local cmp_lsp = require("cmp_nvim_lsp")
    local servers = {
      "rust_analyzer",
      "svelte",
      "pyright",
      "tsserver",
      "yamlls",
      "jsonls",
      "html",
      "cssls",
      "lua_ls",
      "dockerls",
      "tailwindcss",
      "gopls"
    }


    mason.setup()
    mason_lsp_config.setup({ ensure_installed = servers })

    local capabilities = vim.lsp.protocol.make_client_capabilities()
    capabilities = cmp_lsp.default_capabilities(capabilities)

    -- The biding for every servers
    local on_attach = function(bufnr)
      local bufopts = { noremap = true, silent = true, buffer = bufnr }

      vim.keymap.set("n", "K", vim.lsp.buf.hover, bufopts)
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, bufopts)
      vim.keymap.set("n", "gt", vim.lsp.buf.type_definition, bufopts)
      vim.keymap.set("n", "gi", vim.lsp.buf.implementation, bufopts)
      vim.keymap.set("n", "ge", vim.diagnostic.open_float, bufopts)
      vim.keymap.set("n", "<leader>dj", vim.diagnostic.goto_next, bufopts)
      vim.keymap.set("n", "<leader>dk", vim.diagnostic.goto_prev, bufopts)
      vim.keymap.set("n", "<leader>dl", ":Telescope diagnostics<CR>", bufopts)
      vim.keymap.set("n", "<leader>r", vim.lsp.buf.rename, bufopts)
      vim.keymap.set("n", "<leader>G", null_ls_format, bufopts)
    end

    for _, server in pairs(servers) do
      lsp[server].setup({
        capabilities = capabilities,
        on_attach = on_attach,
      })
    end
  end,
}
