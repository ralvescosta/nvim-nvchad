require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- ###### LSP #######
map("n", "<Leader>gi", "<cmd>Telescope lsp_implementations<CR>",
  { noremap = true, silent = true, desc = "Go To Implementation" })

map("n", "<Leader>gr", "<cmd>Telescope lsp_references<CR>",
  { noremap = true, silent = true, desc = "Go to Reference" })

map("n", "<Leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>",
  { noremap = true, silent = true, desc = "Go to Definition" })

map("n", "<Leader>gD", "<cmd>lua vim.lsp.buf.declaration()<CR>",
  { noremap = true, silent = true, desc = "Go to Declaration" })

map("n", "<Leader>gs", "<cmd>lua vim.lsp.buf.signature_help()<CR>",
  { noremap = true, silent = true, desc = "Signature Help" })

map("n", "<Leader>cs", "<cmd>Telescope spell_suggest<CR>",
  { noremap = true, silent = true, desc = "Code Spell suggest" })

map("n", "<Leader>cd",
  function()
    require('telescope.builtin').diagnostics({ bufnr = 0 })
  end,
  { noremap = true, silent = true, desc = "Code diagnostic" }
)
--- ############


-- ####### DAP #######
map("n", "<Leader>ds", "<cmd>lua require'dap'.continue()<CR>", { desc = "Start Debugger" })
map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })
map("n", "<leader>dU", "<cmd>lua require('dapui').toggle()<CR>", { desc = "Toggle Dap UI" })
map("n", "<leader>ts", "<cmd>lua require('neotest').summary.toggle()<CR>", { desc = "Toggle Neotest Summary" })
map("n", "<leader>tr", "<cmd>lua require('neotest').run.run()<CR>", { desc = "Run the nearest test to the cursor" })
map("n", "<leader>tf", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>", { desc = "Run the entiere file" })
map("n", "<leader>td", "<cmd>lua require('neotest').run.run({ strategy = 'dap' })<CR>",
  { desc = "Debug the nearest test" })
map("n", "]t", "<cmd>lua require('neotest').jump.next({ status = 'failed' })<CR>",
  { desc = "Jump to the next failed test" })
map("n", "[t", "require('neotest').jump.prev({ status = 'failed' })<CR>", { desc = "Jump to the previous failed test" })
-- ############

-- ####### HOP #######
local hop = require("hop")
local directions = require("hop.hint").HintDirection
map("", "f", function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
end, { remap = true })
map("", "F", function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
end, { remap = true })
map("", "t", function()
  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
end, { remap = true })
map("", "T", function()
  hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
end, { remap = true })
-- ############

-- ######## LINES MOVE ###########
-- NORMAL mode: Move the current line down/up
map("n", "<A-j>", ":m .+1<CR>==", { desc = "Move line down" })
map("n", "<A-k>", ":m .-2<CR>==", { desc = "Move line up" })
-- VISUAL mode: Move the selected block down/up
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })
-- ###########################

-- ######### WINDOW RE SIZE ###########
map("n", "<C-Up>", "<cmd>resize +2<CR>", { desc = "Increase window height" })
map("n", "<C-Down>", "<cmd>resize -2<CR>", { desc = "Decrease window height" })
map("n", "<C-Left>", "<cmd>vertical resize -2<CR>", { desc = "Decrease window width" })
map("n", "<C-Right>", "<cmd>vertical resize +2<CR>", { desc = "Increase window width" })
-- ###################################
