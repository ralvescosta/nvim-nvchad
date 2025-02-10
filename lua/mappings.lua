require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- ###### LSP #######
map(
  "n",
  "<Leader>gi",
  "<cmd>Telescope lsp_implementations<CR>",
  { noremap = true, silent = true, desc = "Go To Implementation" }
)

map("n", "<Leader>gr", "<cmd>Telescope lsp_references<CR>", { noremap = true, silent = true, desc = "Go to Reference" })

map(
  "n",
  "<Leader>gd",
  "<cmd>lua vim.lsp.buf.definition()<CR>",
  { noremap = true, silent = true, desc = "Go to Definition" }
)

map(
  "n",
  "<Leader>gD",
  "<cmd>lua vim.lsp.buf.declaration()<CR>",
  { noremap = true, silent = true, desc = "Go to Declaration" }
)

map(
  "n",
  "<Leader>gs",
  "<cmd>lua vim.lsp.buf.signature_help()<CR>",
  { noremap = true, silent = true, desc = "Signature Help" }
)

map(
  "n",
  "<Leader>cs",
  "<cmd>Telescope spell_suggest<CR>",
  { noremap = true, silent = true, desc = "Code Spell suggest" }
)

map("n", "<Leader>cd", vim.diagnostic.open_float, { noremap = true, silent = true, desc = "Code diagnostic" })
--- ############

-- ####### Telescope #######
map("n", "<Leader>tcd", function()
  require("telescope.builtin").diagnostics { bufnr = 0 }
end, { noremap = true, silent = true, desc = "Telescope code diagnostic" })
-- #####################

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
map("n", "<leader>tf", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>", { desc = "Run the entire file" })
map(
  "n",
  "<leader>td",
  "<cmd>lua require('neotest').run.run({ strategy = 'dap' })<CR>",
  { desc = "Debug the nearest test" }
)
map(
  "n",
  "]t",
  "<cmd>lua require('neotest').jump.next({ status = 'failed' })<CR>",
  { desc = "Jump to the next failed test" }
)
map("n", "[t", "require('neotest').jump.prev({ status = 'failed' })<CR>", { desc = "Jump to the previous failed test" })
-- ############

-- ####### HOP #######
local hop = require "hop"
local directions = require("hop.hint").HintDirection
map("", "f", function()
  hop.hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = true }
end, { remap = true })
map("", "F", function()
  hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = true }
end, { remap = true })
map("", "t", function()
  hop.hint_char1 { direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 }
end, { remap = true })
map("", "T", function()
  hop.hint_char1 { direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 }
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

-- ############# GIT
map("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", { desc = "Show previews git hunk" })
map("n", "<leader>gb", ":Gitsigns toggle_current_line_blame<CR>", { desc = "Toggle line blame" })
map("n", "<leader>gg", function()
  local lazygit_cmd = "lazygit"
  local width = math.floor(vim.o.columns * 0.8)
  local height = math.floor(vim.o.lines * 0.8)
  local row = math.floor((vim.o.lines - height) / 2)
  local col = math.floor((vim.o.columns - width) / 2)

  local buf = vim.api.nvim_create_buf(false, true)
  local _ = vim.api.nvim_open_win(buf, true, {
    relative = "editor",
    width = width,
    height = height,
    row = row,
    col = col,
    style = "minimal",
    border = "rounded",
  })

  vim.fn.termopen(lazygit_cmd)
  vim.api.nvim_command "startinsert"
  vim.api.nvim_buf_set_keymap(buf, "n", "q", "<cmd>bd!<CR>", { noremap = true, silent = true })
end, { remap = true, desc = "Open Lazygit" })
-- ###################################

-- ############# Noice
map("n", "<leader>N", ":Noice dismiss<CR>", { desc = "Dismiss all visible notifications" })
--
