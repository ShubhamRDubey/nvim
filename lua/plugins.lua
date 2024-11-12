return{ 
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },

  {
    "bluz71/vim-moonfly-colors",
    name = "moonfly", 
    lazy = false, 
    priority = 1000 
  },

  {   
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {
        view = {
          width = "22%",
          side = "left",
        },
        git = {
          enable = false,
        }  
      }
    end,
  },

  {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require("lualine").setup {
        options = { theme = 'ayu_dark' }
      }
    end,
  },

  {
    'hrsh7th/nvim-cmp',
    require("cmp").setup({
      sources = {
        { name = 'buffer' }, -- Add buffer source
      },
    })
  },

  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
    dependencies = { 'nvim-lua/plenary.nvim' }
  },

  {
    'windwp/nvim-autopairs',
    event = "InsertEnter",
    opts = {}
  },

  {
    'stevearc/conform.nvim',
    opts = {}
  },

  {
    "nvim-treesitter/nvim-treesitter",
--    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")

      configs.setup({
--        ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "elixir", "heex", "javascript", "html" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
      })
    end
  }
}

