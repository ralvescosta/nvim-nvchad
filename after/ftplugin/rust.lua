vim.opt_local.spell = true
vim.opt.spelllang = "en_us"
vim.opt.spell = true
vim.cmd("syntax enable")
vim.cmd("filetype plugin indent on")

vim.keymap.set("n", "<leader>ca", "<cmd>RustLsp codeAction<CR>", { desc = "RustLsp code actions" })
