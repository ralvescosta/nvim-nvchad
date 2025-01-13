return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      opts.ensure_installed = {
        "codelldb",
        "rust-analyzer",
        "gopls",
        "delve"
      }
    end,
  }
}
