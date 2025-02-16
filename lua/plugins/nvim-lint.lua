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

      -- 🔥 Debugging: Show messages in `:messages`
      vim.api.nvim_create_autocmd("BufWritePost", {
        callback = function()
          vim.notify("Running CSpell Linter...", vim.log.levels.INFO, { timeout = 100 })
          require("lint").try_lint()
        end,
      })
    end,
  },
}
