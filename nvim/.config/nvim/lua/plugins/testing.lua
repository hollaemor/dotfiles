return {
  {
    "vim-test/vim-test",
    ft = { "rust", "python", "java", "go" },
    config = function()
      vim.cmd([[
        let test#strategy = "neovim"
      ]])
    end,
  },
}
