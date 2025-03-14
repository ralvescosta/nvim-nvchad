return {
  {
    "mfussenegger/nvim-lint",
    event = "VeryLazy",
    config = function()
      local lint = require "lint"

      lint.linters_by_ft = {
        go = { "cspell" },
        rust = { "cspell" },
        lua = { "cspell" },
        typescript = { "cspell" },
        javascript = { "cspell" },
        python = { "cspell" },
        java = { "cspell" },
        terraform = { "cspell" },
        text = { "cspell" },
        markdown = { "cspell" },
      }

      vim.api.nvim_create_autocmd("BufWritePost", {
        callback = function()
          require("lint").try_lint()
        end,
      })
    end,
  },
}
