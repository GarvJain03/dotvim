return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
  
    -- Syntax Highlighting
    use {
      'nvim-treesitter/nvim-treesitter',
      run = ":TSUpdate",
      config = function() require'config.nvim-treesitter' end
    }
  
    -- Color Theme
    -- use 'haishanh/night-owl.vim'
    -- use 'folke/tokyonight.nvim'
    -- use 'navarasu/onedark.nvim'
    use 'Mofiqul/dracula.nvim'
    
    -- Status Line
    use {
      'nvim-lualine/lualine.nvim',
      requires = { 'kyazdani42/nvim-web-devicons', opt = true },
      config = function() require'config.lualine' end
    }
  
    -- Tabs (Buffer Line)
    use {
      'akinsho/bufferline.nvim',
      requires = 'kyazdani42/nvim-web-devicons',
      config = function() require'config.bufferline' end
    }
  
    -- Github Copilot
    use 'github/copilot.vim'
  
    -- Tree
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icon
      },
      config = function() require'config.nvim-tree' end
    }
  
    use 'windwp/nvim-ts-autotag'
    
    use 'p00f/nvim-ts-rainbow'
  
    use {
      'windwp/nvim-autopairs',
      config = function() require'config.autopairs' end
    }
  
    -- Discord Rich Presence
    use {
      'andweeb/presence.nvim',
      config = function() require'config.presence' end
    }
  
    -- Keybindings
    use {
      'folke/which-key.nvim',
      config = function() require'config.which-key' end
    }
  
    -- FZF
    use {
      'nvim-telescope/telescope.nvim',
      requires = { {'nvim-lua/plenary.nvim'} },
      config = function() require'config.telescope' end
    }
  
    use {
      'neoclide/coc.nvim',
      branch = "release",
      config = function() require("config.coc") end,
      requires = {
        'sheerun/vim-polyglot', 'alampros/vim-styled-jsx', 'mattn/emmet-vim', 'jiangmiao/auto-pairs', 'jparise/vim-graphql'
      }
    }

    use {
      'glepnir/dashboard-nvim',
      config = function() require('config.dashboard') end
    }

    use {
      'lewis6991/gitsigns.nvim',
      config = function()
        require('gitsigns').setup{current_line_blame = true}
      end
    }
  end)
  
