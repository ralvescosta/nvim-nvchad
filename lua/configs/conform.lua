local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "gofmt" },
    gomod = { "goimports" },
    rust = { "clippy" },
    toml = { "taplo" },
    proto = { "buf" },
    graphql = { "prettier" },
    terraform = { "terraform_fmt" },
    hcl = { "terraform_fmt" },
    yaml = { "yamlfmt" },
    dockerfile = { "dockerfmt" },
    json = { "prettier" },
    javascript = { "prettier" },
    jsx = { "prettier" },
    typescript = { "prettier" },
    tsx = { "prettier" },
  },

  format_on_save = {
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
