require("mason-lspconfig").setup({
  ensure_installed = {
    "rust-analyzer",
    "codelldb",
    "gopls",
    "delve",
    "gofumpt",
    "goimports-reviser",
    "golines",
  }
})
