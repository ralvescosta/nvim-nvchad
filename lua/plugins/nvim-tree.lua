return {
  {
    "nvim-tree/nvim-tree.lua",
    opts = {
      git = {
        enable = true, -- Ensure git integration is enabled
        ignore = false, -- Show files that are in .gitignore
      },
      filters = {
        git_ignored = false, -- Explicitly disable filtering of gitignored files
      },
    },
  },
}
