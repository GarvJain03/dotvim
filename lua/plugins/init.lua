return require('packer').startup(function()
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- Syntax Highlighting
	use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}

  -- Color Theme
  use 'folke/tokyonight.nvim'

  -- Status Line
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true },
    config = function() require'lualine-config' end
  }

  -- Tabs (Buffer Line)
  use {
    'akinsho/bufferline.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function() require'bufferline-config' end
  }

  use 'github/copilot.vim'
end)
