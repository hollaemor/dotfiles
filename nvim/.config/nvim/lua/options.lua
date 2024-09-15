require "nvchad.options"

-- add yours here!

-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

local opt = vim.opt

opt.foldmethod = "indent"
opt.foldenable = true
opt.foldcolumn = "1"
opt.foldlevelstart = -1
opt.foldlevel = 99
opt.backup = false
opt.swapfile = false


-- number of lines left before scrolling down buffer
opt.scrolloff = 10
