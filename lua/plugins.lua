local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd 'packadd packer.nvim'
end


return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- DashBoard
  use 'glepnir/dashboard-nvim'

  use { 'neoclide/coc.nvim', branch= 'release' }
  -- Debugging
  -- use 'mfussenegger/nvim-dap'

  -- Icons
  use 'kyazdani42/nvim-web-devicons'

  -- Explorer
  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons', } }

  -- StatusLine and Bufferline
  use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
  use { 'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true} }

  -- colorschemes
  -- use 'christianchiarulli/nvcode-color-schemes.vim'
  use 'navarasu/onedark.nvim'
  use 'arcticicestudio/nord-vim'
  use 'EdenEast/nightfox.nvim'


  -- Treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }

-- Telescope
  use { 'nvim-telescope/telescope.nvim', requires = { {'nvim-lua/plenary.nvim'} } }
  use 'airblade/vim-rooter'

  -- General Plugins
  use 'voldikss/vim-floaterm' -- Floatterm
  use 'windwp/nvim-autopairs' -- autopairs
  use 'lukas-reineke/indent-blankline.nvim' -- indendation
  use 'tpope/vim-commentary'  -- comments
  use {'lukas-reineke/format.nvim'} --format
  use 'phaazon/hop.nvim'
end)
