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
    require("neotest-python")({
      dap = { justMyCode = false },
      runner = function()
        vim.env.PYTHONPATH = '.'
        return 'pytest'
      end,
      args = function()
        return { '-q', '--color=yes' }
      end
    }),
    require("neotest-rust"),
    require("neotest-go"),
  },
})
