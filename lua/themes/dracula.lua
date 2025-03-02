local M = {}

M.base_30 = {
  white = "#F8F8F2",
  darker_black = "#1e1f29", -- Darker Dracula background
  black = "#282A36", -- Default Dracula background (nvim bg) 343746
  black2 = "#343746", -- Slightly lighter shade of bg
  one_bg = "#44475a", -- Current line (Dracula selection color)
  one_bg2 = "#565761",
  one_bg3 = "#6272a4", -- Comment color
  grey = "#5e5f69",
  grey_fg = "#666771",
  grey_fg2 = "#6e6f79",
  light_grey = "#73747e",
  red = "#ff7070",
  baby_pink = "#ff86d3",
  pink = "#FF79C6",
  line = "#3c3d49", -- for lines like vertsplit
  green = "#50fa7b",
  vibrant_green = "#5dff88",
  nord_blue = "#8b9bcd",
  blue = "#a1b1e3",
  yellow = "#F1FA8C",
  sun = "#FFFFA5",
  purple = "#BD93F9",
  dark_purple = "#BD93F9",
  teal = "#92a2d4",
  orange = "#FFB86C",
  cyan = "#8BE9FD",
  statusline_bg = "#282a36", -- Match Dracula background
  lightbg = "#44475a", -- Match Dracula selection color
  pmenu_bg = "#b389ef",
  folder_bg = "#BD93F9",
}

M.base_16 = {
  base00 = "#282a36", -- Default Dracula background
  base01 = "#3a3c4e",
  base02 = "#4d4f68",
  base03 = "#626483",
  base04 = "#62d6e8",
  base05 = "#e9e9f4",
  base06 = "#f1f2f8",
  base07 = "#f7f7fb",
  base08 = "#c197fd",
  base09 = "#FFB86C",
  base0A = "#62d6e8",
  base0B = "#F1FA8C",
  base0C = "#8BE9FD",
  base0D = "#50fa7b",
  base0E = "#ff86d3",
  base0F = "#F8F8F2",
}

M.polish_hl = {
  treesiter = {
    ["@function.builtin"] = { fg = M.base_30.cyan },
    ["@number"] = { fg = M.base_30.purple },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "dracula")

return M
