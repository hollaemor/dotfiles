local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = { "<cmd>DapToggleBreakPoint<CR>" },
    ["<F9>"] = { "<cmd>:DapToggleBreakpoint<CR>" },
    ["<F5>"] = { "<cmd>:DapContinue<CR>" },
    ["<F10>"] = { "<cmd>:DapStepOver<CR>" },
    ["<F11>"] = { "<cmd>:DapStepInto<CR>" },
    ["<S-F11>"] = { "<cmd>:DapStepOut<CR>" },
  },
}

M.neotest = {
  plugin = true,
  n = {
    ["<leader>tn"] = { "<cmd>lua require('neotest').run.run()<CR>" },
    ["<leader>tf"] = { "<cmd>lua require('neotest').run.run(vim.fn.expand('%'))<CR>" },
    ["<leader>ts"] = { "<cmd>lua require('neotest').summary.toggle()<CR>" },
    ["<leader>td"] = { "<cmd>lua require('neotest').run.run({strategy = 'dap'})<CR>" },
  },
}

M.dap_python = {

  plugin = true,
  n = {
    ["<leader>dpr"] = {
      function()
        require("dap-python").test_method()
      end,
    },
  },
}

M.crates = {
  n = {
    ["<leader>rcu"] = {
      function()
        require("crates").upgrade_all_crates()
      end,
    },
  },
}

M.trouble = {
  plugin = true,
  n = {
    ["<leader>xx"] = { "<cmd>lua require('trouble').open()<cr>" },
    ["<leader>xw"] = { "<cmd>lua require('trouble').open('workspace_diagnostics')<cr>" },
    ["<leader>xd"] = { "<cmd>lua require('trouble').open('document_diagnostics')<cr>" },
    ["<leader>xl"] = { "<cmd>lua require('trouble').open('loclist')<cr>" },
  },
}

M.refactoring = {
  plugin = true,
  n = {
    ["<leader>rr"] = { "<cmd>lua require('telescope').extensions.refactoring.refactors()<cr>" },
  },

  x = {
    ["<leader>rr"] = { "<cmd>lua require('telescope').extensions.refactoring.refactors()<cr>" },
  },
}

return M
