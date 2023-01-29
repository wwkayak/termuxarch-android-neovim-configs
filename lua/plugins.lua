return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'williamboman/mason.nvim'
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  use 'morhetz/gruvbox'
  use 'folke/tokyonight.nvim'
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons'}
  }
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = {'nvim-lua/plenary.nvim'} 
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim', 
	  run = 'make' 
  }
  use { 
    'TimUntersberger/neogit', 
    requires = 'nvim-lua/plenary.nvim' 
  }
  use {
    'nvim-tree/nvim-tree.lua',
    requires = {'nvim-tree/nvim-web-devicons'}, -- optional, for file icons
  }
  use  'kylechui/nvim-surround'

  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-nvim-lua'
  use 'saadparwaiz1/cmp_luasnip' 

  use 'L3MON4D3/LuaSnip'
end)

