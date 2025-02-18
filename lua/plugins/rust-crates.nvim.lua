return {
  {
    "saecki/crates.nvim",
    ft = { "toml" },
    event = { "BufRead Cargo.toml" },
    tag = 'stable',
    config = function()
      require("crates").setup {
        completion = {
          cmp = {
            enabled = true
          },
        },
      }
      require("cmp").setup.buffer({
        sources = { { name = "crates" } }
      })
    end
  }
}
