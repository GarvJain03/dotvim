return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Syntax Highlighting
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ":TSUpdate",
    config = function() require'nvim-treesitter-config' end
  }

  -- Color Theme
  -- use 'folke/tokyonight.nvim'
  use 'Mofiqul/dracula.nvim'

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

  -- Github Copilot
  use 'github/copilot.vim'

  -- Tree
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    config = function() require'nvim-tree-config' end
  }

  use 'windwp/nvim-ts-autotag'
  
  use 'p00f/nvim-ts-rainbow'

  use {
    'windwp/nvim-autopairs',
    config = function() require'autopairs-config' end
  }

  -- Discord Rich Presence
  use {
    'andweeb/presence.nvim',
    config = function() require'presence-config' end
  }
end)
