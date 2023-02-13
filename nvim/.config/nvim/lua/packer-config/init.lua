return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Packer can manage itself
    -- use 'shaunsingh/nord.nvim' -- colorscheme
    use 'folke/tokyonight.nvim' -- colorscheme
    use 'kyazdani42/nvim-web-devicons' -- enable icons
  	use 'kyazdani42/nvim-tree.lua' -- file explorer
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'williamboman/nvim-lsp-installer' -- lsp language installer

    -- telescope - Find, Filter, Preview, Pick. All lua, all the time.
    use 'nvim-lua/plenary.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    -- treesitter & treesitter modules/plugins
    use ({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }) -- treesitter
	use 'nvim-treesitter/nvim-treesitter-textobjects' -- textobjects
	use 'nvim-treesitter/nvim-treesitter-refactor'

    -- sql
    use 'tpope/vim-dadbod' -- vim db client
    use 'kristijanhusak/vim-dadbod-completion' -- vim db client sql completion
    use 'kristijanhusak/vim-dadbod-ui' -- vim db client ui

    -- IAC and Config Mgmt Plugins
    use 'hashivim/vim-terraform'
end)
