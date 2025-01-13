return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
        "vim", "lua", "vimdoc",
        "rust", "go", "c", "markdown",
        "terraform", "bash", "toml", "gomod",
        "gosum", "gowork", "proto", "sql",
        "graphql", "cmake", "json", "terraform",
        "dockerfile", "yaml"
  		},
  	},
  },

  {
    "folke/todo-comments.nvim",
    event = "BufRead",
    config = function()
      require("todo-comments").setup()
    end
  },

  { "tpope/vim-surround" },
  { "felipec/vim-sanegx",  event = "BufRead" },
  { "tpope/vim-repeat" },
  { "ThePrimeagen/harpoon" },
  {
    "phaazon/hop.nvim",
    branch = "v2",
    config = function()
      require("hop").setup()
    end
  },
}
