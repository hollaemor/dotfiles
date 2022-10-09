vim.cmd([[
  let test#strategy= "neovim"
  let test#python#pytest#options = "--color=yes"
]])

local status, neotest = pcall(require, "neotest")

if not status then
  vim.notify("Neotest not installed")
end

neotest.setup({
  adapters = {
    require("neotest-python"),
    require("neotest-rust"),
    require("neotest-go"),
  },
})
