vim.opt_local.spell = true
vim.opt.spelllang = "en_us"
vim.opt.spell = true

vim.keymap.set("n", "<leader>ca", "<cmd>RustLsp codeAction<CR>", { desc = "RustLsp code actions" })
