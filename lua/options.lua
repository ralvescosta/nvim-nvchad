require "nvchad.options"

vim.g.db_ui_execute_on_save = 0
vim.opt.spelllang = "en_us"
vim.opt.spell = true
vim.opt.laststatus = 3

-- ##### FOLD #####
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldenable = false
vim.api.nvim_create_autocmd("BufReadPost", {
  pattern = "*",
  callback = function()
    vim.defer_fn(function()
      vim.cmd "normal! zR"
    end, 50)
  end,
})
-- #####################

-- ##### BRAKING POINT ######
vim.api.nvim_set_hl(0, "GreenLadybug", { fg = "#00ff00" })
vim.api.nvim_set_hl(0, "RedLadybug", { fg = "#ff0000" })

vim.fn.sign_define("DapBreakpoint", {
  text = "", -- The "ladybug" glyph (nf-md-ladybug)
  texthl = "GreenLadybug",
  linehl = "",
  numhl = "",
})

vim.fn.sign_define("DapStopped", {
  text = "",
  texthl = "RedLadybug",
  linehl = "",
  numhl = "",
})
-- ##########################

-- #### RESETTING SQL KEY BIDING
vim.api.nvim_create_autocmd("Filetype", {
  pattern = "sql",
  callback = function()
    vim.keymap.del("i", "<left>", { buffer = true })
    vim.keymap.del("i", "<right>", { buffer = true })
  end,
})
