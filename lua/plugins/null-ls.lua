return {
	"jose-elias-alvarez/null-ls.nvim",

	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local null_ls = require("null-ls")
		local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
		local formatting = null_ls.builtins.formatting
		local sources = {
			formatting.eslint,
			formatting.autopep8,
			formatting.stylua,
			formatting.dart_format,
			formatting.rustfmt,
			formatting.gofmt,
			formatting.sqlfluff.with({
				extra_args = { "--dialect", "postgres" }, -- change to your dialect
			}),
		}

		null_ls.setup({
			sources = sources,
			debug = true,
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
					vim.api.nvim_create_autocmd("BufWritePre", {
						group = augroup,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ bufnr = bufnr })
						end,
					})
				end
			end,
		})
	end,
}
