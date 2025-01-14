require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- Nvim DAP
map("n", "<Leader>dl", "<cmd>lua require'dap'.step_into()<CR>", { desc = "Debugger step into" })
map("n", "<Leader>dj", "<cmd>lua require'dap'.step_over()<CR>", { desc = "Debugger step over" })
map("n", "<Leader>dk", "<cmd>lua require'dap'.step_out()<CR>", { desc = "Debugger step out" })
map("n", "<Leader>dc", "<cmd>lua require'dap'.continue()<CR>", { desc = "Debugger continue" })
map("n", "<Leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { desc = "Debugger toggle breakpoint" })

-- Toggle dup ui
map("n", "<leader>dU", function()
  require("dapui").toggle()
end)

-- Toggle the summary panel
map("n", "<leader>ts", function()
  require("neotest").summary.toggle()
end)

-- Run the nearest test to the cursor
map("n", "<leader>tr", function()
  require("neotest").run.run()
end)

-- Run the entire file
map("n", "<leader>tf", function()
  require("neotest").run.run(vim.fn.expand("%"))
end)

-- Debug the nearest test (requires nvim-dap + adapter support)
map("n", "<leader>td", function()
  require("neotest").run.run({ strategy = "dap" })
end)

-- Jump to the next failed test
map("n", "]t", function()
  require("neotest").jump.next({ status = "failed" })
end)

-- Jump to the previous failed test
map("n", "[t", function()
  require("neotest").jump.prev({ status = "failed" })
end)


-- HOP
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
