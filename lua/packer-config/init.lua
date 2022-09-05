return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Devicons 
    use 'kyazdani42/nvim-web-devicons'
    
    -- file explorer
    use 'kyazdani42/nvim-tree.lua'

    -- Gruvbox colorscheme
    use 'ellisonleao/gruvbox.nvim'
    
    -- Configurations for Nvim LSP
    use 'neovim/nvim-lspconfig'

    use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    use 'hrsh7th/cmp-buffer' -- Buffer completion'
    use 'hrsh7th/cmp-path' -- path completion'
    use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    use 'L3MON4D3/LuaSnip' -- Snippets plugin

    -- TreeSitter plugins
    use {
        'nvim-treesitter/nvim-treesitter',
        
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
    use 'nvim-treesitter/nvim-treesitter-refactor' 

    use 'rcarriga/nvim-notify' -- Fancy notifications UI
    use 'nvim-lualine/lualine.nvim' -- Status bar
    use 'romgrk/barbar.nvim' -- manages tabs
    
    -- Telescope Plugins
    use {
        'nvim-telescope/telescope.nvim',
        requires = { {'nvim-lua/plenary.nvim'}, { 'kdheepak/lazygit.nvim' } },
        config = function()
            require('telescope').load_extension('lazygit')
            end,
    }
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }
    use { "nvim-telescope/telescope-file-browser.nvim" }
    use 'nvim-telescope/telescope-project.nvim'   
    
    use {'akinsho/toggleterm.nvim', tag = '*', config = function()
        require('toggleterm').setup()
    end}
    use 'kdheepak/lazygit.nvim'

    end)
