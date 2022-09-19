return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Packer can manage itself
    use 'shaunsingh/nord.nvim' -- colorscheme
    use 'kyazdani42/nvim-web-devicons' -- enable icons
  	use 'kyazdani42/nvim-tree.lua' -- file explorer
    use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
    use 'tpope/vim-dadbod' -- vim db client
    use 'tpope/dotenv' -- vim db environments
    use 'kristijanhusak/vim-dadbod-completion' -- vim db client sql completion
    use 'kristijanhusak/vim-dadbod-ui' -- vim db client ui
    use 'kywind3000/vim-quickui' -- vim ui menu 
end)
