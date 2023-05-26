return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		-- add any options here
	},
	dependencies = {
		-- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
		"MunifTanjim/nui.nvim",
		-- OPTIONAL:
		"nvim-notify", --   If not available, we use `mini` as the fallback
		"rcarriga/nvim-notify",
	},
	config = function()
		require("noice").setup({
			views = {
				cmdline_popup = {
					position = {
						row = "40%",
						col = "50%",
					},
					border = {
						padding = { 0, 1 },
					},
					size = {
						width = 60,
						height = "auto",
					},
				},
			},
		})
	end,
}
