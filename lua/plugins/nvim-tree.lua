return {
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        enable = true, -- Ensure git integration is enabled
        ignore = false, -- Show files that are in .gitignore
      },
      filters = {
        git_ignored = false,
      },
      renderer = {
        highlight_git = true,
        highlight_diagnostics = true,
      },
      update_focused_file = {
        enable = true,
      },
    },
  },
}
