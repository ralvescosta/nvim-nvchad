require("mason-lspconfig").setup {
  opts = {
    ensure_installed = {
      "rust-analyzer",
      "gopls",
      "delve",
      "gofumpt",
      "goimports-reviser",
      "golines",
      "terraform-ls",
      "lua-language-server",
      "codelldb",
      "cspell",
      "codespell",
      "misspell",
    },
  },
}
