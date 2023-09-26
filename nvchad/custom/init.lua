local opt = vim.opt

-------------------------------------- options ------------------------------------------
-- fold config
opt.foldmethod = "indent"
opt.foldenable = true
opt.foldcolumn = "1"
opt.foldlevelstart = -1
opt.foldlevel = 99
opt.backup = false
opt.swapfile = false

-- number of lines left before scrolling down buffer
opt.scrolloff = 10

vim.api.nvim_create_autocmd("VimEnter", {
  desc = "Auto select virtualenv Nvim open",
  pattern = "*",
  callback = function()
    local venv = vim.fn.findfile("pyproject.toml", vim.fn.getcwd() .. ";")
    if venv ~= "" then
      require("venv-selector").retrieve_from_cache()
      --  vim.defer_fn(function()
      --   vim.cmd.redrawstatus()
      -- end, 1000)
    end
  end,
  once = true,
})

vim.o.winbar = "%{%v:lua.require'nvim-navic'.get_location()%}"


-- DAP symbols 
vim.api.nvim_set_hl(0, "DapBreakpoint", { ctermbg = 0, fg = "#993939" })
vim.api.nvim_set_hl(0, "DapLogPoint", { ctermbg = 0, fg = "#61afef" })
vim.api.nvim_set_hl(0, "DapStopped", { ctermbg = 0, fg = "#98c379" })
vim.fn.sign_define("DapBreakpoint", { text = "󰃤 ", texthl = "DapBreakpoint" })
vim.fn.sign_define("DapBreakpointCondition", { text = " ﳁ", texthl = "DapBreakpoint" })
vim.fn.sign_define("DapBreakpointRejected", { text = " ", texthl = "DapBreakpoint" })
vim.fn.sign_define("DapLogPoint", { text = " ", texthl = "DapLogPoint" })
vim.fn.sign_define("DapStopped", { text = " ", texthl = "DapStopped" })
