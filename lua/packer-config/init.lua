return require'packer'.startup(function()

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
   
   -- Colorscheme
   use {
       'Mofiqul/dracula.nvim',
       config = function() require'colorschemes-config.dracula' end
   }

   -- Neovim Tree
   use {
        'kyazdani42/nvim-tree.lua',
        requires = {
            'kyazdani42/nvim-web-devicons',
        },
        config = function() require'nvim-tree-config' end
    }

   -- Copilot
   use 'github/copilot.vim'

   -- Status Line
   use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true },
        config = function() require'lualine-config' end
   }

   -- Highlighting
  use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        config = function() require('nvim-treesitter-config') end
  }

  -- Dashboard
  use {
      'glepnir/dashboard-nvim',
      config = function() require'dashboard-config' end
  }

  -- FZF
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/plenary.nvim'}},
      config = function() require'telescope-config' end
  }

end)

