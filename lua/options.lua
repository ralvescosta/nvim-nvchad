require "nvchad.options"

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

-- ### SPELL CHECKER
vim.opt.spelllang = "en_us"
vim.opt.spell = true
-- ############

-- ###### Dashboard ######
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    -- If no files were passed as arguments (argv == 0),
    -- open Nvdash automatically.
    if #vim.fn.argv() == 0 then
      vim.cmd("Nvdash")
    end
  end,
})
-- #####################
