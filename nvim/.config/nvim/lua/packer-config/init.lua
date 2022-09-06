return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim' -- Packer can manage itself
    use 'shaunsingh/nord.nvim' -- colorscheme
    use 'kyazdani42/nvim-web-devicons' -- enable icons
  	use 'kyazdani42/nvim-tree.lua' -- file explorer
end)
