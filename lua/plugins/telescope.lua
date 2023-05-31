return {
	"nvim-telescope/telescope.nvim",

	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-file-browser.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-telescope/telescope-project.nvim",
	},

	keys = {
		{
			"<leader>fd",
			":Telescope file_browser<CR>",
			silent = true,
			desc = "Open file browser (project dir)",
		},
		{
			"<leader>fb",
			":Telescope file_browser path=%:p:h<CR>",
			silent = true,
			desc = "Open file browser (current dir)",
		},
		{ "<leader>ff", ":Telescope find_files<CR>", silent = true, desc = "Find file" },
		{ "<leader>fg", ":Telescope live_grep<CR>", silent = true, desc = "Live grep" },
		{ "<leader>bb", ":Telescope buffers<CR>", silent = true, desc = "Open buffer browser" },
	},

	config = function()
		local telescope = require("telescope")

		telescope.load_extension("file_browser")
		telescope.load_extension("fzf")
		telescope.load_extension("project")
	end,
}
