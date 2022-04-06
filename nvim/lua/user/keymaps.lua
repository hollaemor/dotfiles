local opts = {noremap = true, silent = true}
local term_opts = { silent = true}

local keymap = vim.api.nvim_set_keymap

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

-- Telescope find files
keymap("n", "<C-p>", ":Telescope find_files<cr>", opts)

-- Toggle Nvim tree
keymap("n", "<C-n>", ":NvimTreeToggle<cr>", opts)

