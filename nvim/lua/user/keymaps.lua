local opts = {noremap = true, silent = true}
local term_opts = { silent = true}

local keymap = vim.api.nvim_set_keymap

-- remap space as leader key
keymap("", "<space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
-- normal mode = "n"
-- insert mode = "i"
-- visual mode = "v"
-- visual block mode = "x"
-- term mode = "t"
-- command mode = "c"


-- Normal --
-- Disable arrow keys for navigation
keymap("n","<Up>", "<Nop>", opts)
keymap("n","<Down>", "<Nop>", opts)
keymap("n","<Left>", "<Nop>", opts)
keymap("n","<Right>", "<Nop>", opts)

-- Navigate buffers
keymap("n", "<S-Right>", ":bnext<cr>", opts)
keymap("n", "<S-Left>", ":bprevious<cr>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<cr>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<cr>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<cr>", opts)
keymap("n", "<leader>fh", ":Telescope help_tags<cr>", opts)


-- Toggle Nvim tree
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)


-- Trouble
keymap("n", "<leader>xx", "<cmd>TroubleToggle<cr>", opts)
keymap("n", "<leader>xw", "<cmd>TroubleToggle workspace_diagnostics<cr>", opts)
keymap("n", "<leader>xd", "<cmd>TroubleToggle document_diagnostics<cr>", opts)

