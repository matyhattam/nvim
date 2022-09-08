return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- Devicons
	use("kyazdani42/nvim-web-devicons")

	-- Gruvbox colorscheme
	use("ellisonleao/gruvbox.nvim")

	-- Configurations for Nvim LSP
	use("neovim/nvim-lspconfig")
	use("hrsh7th/nvim-cmp") -- Autocompletion plugin
	use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
	use("hrsh7th/cmp-buffer") -- Buffer completion'
	use("hrsh7th/cmp-path") -- path completion'
	use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
	use("L3MON4D3/LuaSnip") -- Snippets plugin

	-- TreeSitter plugins
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	use("nvim-treesitter/nvim-treesitter-refactor")
	use("p00f/nvim-ts-rainbow")

	use("rcarriga/nvim-notify") -- Fancy notifications UI
	use("nvim-lualine/lualine.nvim") -- Status bar
	use("romgrk/barbar.nvim") -- manages tabs

	use("jose-elias-alvarez/null-ls.nvim") -- Format code on save (+ other code actions, diags, if needed)

	-- Telescope Plugins
	use({
		"nvim-telescope/telescope.nvim",
		requires = { { "nvim-lua/plenary.nvim" }, { "kdheepak/lazygit.nvim" } },
		config = function()
			require("telescope").load_extension("lazygit")
		end,
	})
	use({ "nvim-telescope/telescope-fzf-native.nvim", run = "make" })
	use({ "nvim-telescope/telescope-file-browser.nvim" })
	use("nvim-telescope/telescope-project.nvim")
	-- Terminal pluggin
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})
	use("kdheepak/lazygit.nvim")

	-- Commenting plugin
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})

	use("tpope/vim-sleuth") -- Auto indent detection

	-- Auto pairs plugin
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})

	-- Git Signs
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	})

	use("Pocco81/auto-save.nvim") -- Auto Save Pluggin

	-- Surround pair pluggin
	use({
		"ur4ltz/surround.nvim",
		config = function()
			require("surround").setup({ mappings_style = "sandwich" })
		end,
	})

	-- Flutter pluggins
	-- Hop Pluggin
	use({
		"phaazon/hop.nvim",
		branch = "v2", -- optional but strongly recommended
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require("hop").setup({ keys = "etovxqpdygfblzhckisuran" })
		end,
	})

	-- Indent context pluggin
	use("lukas-reineke/indent-blankline.nvim")

	-- Alpha Pluggin
	use({
		"goolord/alpha-nvim",
		config = function()
			require("alpha").setup(require("alpha.themes.dashboard").config)
		end,
	})
end)
