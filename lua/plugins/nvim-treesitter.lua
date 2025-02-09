return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc", "rust",
        "go", "gomod", "gosum", "gowork",
        "c", "markdown", "terraform", "bash",
        "toml", "proto", "sql", "graphql", "cmake",
        "json", "terraform", "dockerfile", "yaml"
      },
    },
    highlight = {
      enable = true,
      additional_vim_regex_highlighting = {
        "vim", "lua", "vimdoc", "rust",
        "go", "gomod", "gosum", "gowork",
        "c", "markdown", "terraform", "bash",
        "toml", "proto", "sql", "graphql", "cmake",
        "json", "terraform", "dockerfile", "yaml",
      }
    }
  },

}
