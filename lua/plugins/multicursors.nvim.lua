return {
  {
    "smoka7/multicursors.nvim", --leader
    event = "VeryLazy",
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "smoka7/hydra.nvim",
    }, --leader
    opts = {
      hint_config = { border = "rounded" },
    },
    cmd = { 'MCstart', 'MCvisual', 'MCclear', 'MCpattern', 'MCvisualPattern', 'MCunderCursor' },
    keys = {}
  },
}
