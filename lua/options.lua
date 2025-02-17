require "nvchad.options"

vim.opt.spelllang = "en_us"
vim.opt.spell = true

-- ###### Dashboard ######
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- If no files were passed as arguments (argv == 0),
    -- open Nvdash automatically.
    if #vim.fn.argv() == 0 then
      vim.cmd "Nvdash"
    end
  end,
})
-- #####################

-- ##### FOLD #####
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
-- Optional: Start with all folds open or closed
vim.opt.foldenable = false
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
