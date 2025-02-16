return {
  {
    "lewis6991/gitsigns.nvim",
    event = "BufReadPre",
    config = function()
      local present, gitsigns = pcall(require, "gitsigns")
      if not present then
        return
      end

      -- Load NvChad's default Gitsigns config
      local default_gitsigns = require "nvchad.configs.gitsigns"

      -- Extend NvChad’s default config without overwriting it
      gitsigns.setup(vim.tbl_deep_extend("force", default_gitsigns, {
        current_line_blame = true,
        current_line_blame_opts = {
          delay = 1000,
          virt_text = true,
          virt_text_pos = "eol",
        },
      }))
    end,
  },
}
