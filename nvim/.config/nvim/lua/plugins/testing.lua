return {
  {
    "vim-test/vim-test",
    ft = { "rust", "python" },
    config = function()
      vim.cmd([[
        let test#strategy = "neovim"
      ]])
    end,
  },
}
