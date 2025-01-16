return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      require("noice").setup({
        messages = {
          enabled = false
        },
        views = {
          notify = {
            replace = true, -- HERE
          },
        },
        lsp = {
          messages = {
            enabled = false
          },
          override = {
            ["vim.lsp.util.show_code_action_menu"] = false,
          },
          progress = {
            enabled = true,
            format = "lsp_progress",
            format_done = "lsp_progress_done",
            view = "notify",
          },
          signature = {
            enabled = false,
            opts = {},
          },
        },
        presets = {
          lsp_doc_border = true,
        },
      })
    end
  }
}
