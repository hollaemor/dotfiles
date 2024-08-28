require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- tests and debugging
map("n", "<leader>tn", "<cmd>lua require('neotest').run.run()<cr>", { desc = "Neotest: test method" })
map("n", "<leader>tf", "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<cr>", { desc = "Neotest: test file" })
map("n", "<leader>ts", "<cmd>lua require('neotest').summary.toggle()<cr>", { desc = "Neotest: toggle summary" })
map(
  "n",
  "<leader>td",
  "<cmd>lua require('neotest').run.run({strategy = 'dap'})<cr>",
  { desc = "Neotest: toggle summary" }
)
map("n", "<F9>", "<cmd>DapToggleBreakpoint<cr>", {desc = "DAP toggle breakpoint"})
map("n", "<F5>", "<cmd>DapContinue<cr>", {desc = "DAP continue"})
map("n", "<F10>", "<cmd>DapStepOver<cr>", {desc = "DAP step over"})
map("n", "<F11>", "<cmd>DapStepInto<cr>", {desc = "DAP step into"})
map("n", "<S-F11>", "<cmd>DapStepOut<cr>", {desc = "DAP step out"})
