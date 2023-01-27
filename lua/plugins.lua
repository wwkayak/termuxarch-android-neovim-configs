return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use('williamboman/mason.nvim')
  use('williamboman/mason-lspconfig.nvim')
  use('neovim/nvim-lspconfig')
--  use('nvim-tree/nvim-web-devicons')
  --  use('simrat39/rust-tools.nvim')
  -- use('vim-airline/vim-airline')
  use('morhetz/gruvbox')
  use('folke/tokyonight.nvim')
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
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make' }



end)
