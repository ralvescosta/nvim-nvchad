return {
  {
    "nvim-tree/nvim-tree.lua",
    config = function()
      require("nvim-tree").setup {
        disable_netrw = true,
        hijack_netrw = true,
        open_on_tab = false,
        hijack_cursor = false,
        update_cwd = true,
        hijack_directories = {
          enable = true,
          auto_open = true,
        },
        diagnostics = {
          enable = true,
          icons = {
            hint = "",
            info = "",
            warning = "",
            error = "",
          },
        },
        update_focused_file = {
          enable = true,
          update_cwd = true,
          ignore_list = {},
        },
        git = {
          enable = true,
          ignore = false,
          timeout = 500,
        },
        filters = {
          git_ignored = false,
        },
        view = {
          width = 35,
          side = "left",
          number = false,
          relativenumber = false,
          cursorline = true,
        },
        renderer = {
          highlight_git = true,
          root_folder_modifier = ":t",
          highlight_opened_files = "icon",
          icons = {
            show = {
              file = true,
              folder = true,
              folder_arrow = true,
              git = true,
            },
            glyphs = {
              default = "",
              symlink = "",
              git = {
                unstaged = "",
                staged = "S",
                unmerged = "",
                renamed = "➜",
                deleted = "",
                untracked = "U",
                ignored = "◌",
              },
              folder = {
                default = "",
                open = "",
                empty = "",
                empty_open = "",
                symlink = "",
              },
            },
          },
        },
      }

      vim.cmd [[
        highlight NvimTreeNormal guifg=#ffffff
        highlight NvimTreeOpenedFile guibg=#6272a4 guifg=#ffffff gui=bold,underline
        highlight NvimTreeExecFile guifg=#ffffff
        highlight NvimTreeSpecialFile guifg=#ffffff
        highlight NvimTreeImageFile guifg=#ffffff
        highlight NvimTreeMarkdownFile guifg=#ffffff
      ]]
    end,
  },
}
