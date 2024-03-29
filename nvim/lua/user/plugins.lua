local fn = vim.fn

-- Automatically install Packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  })
  print("Installing packer. Close and reopen Neovim...")
  vim.cmd([[packadd packer.nvim]])
end

-- Autocommand that reloads neovim whenever plugins.lua is saved
vim.cmd([[
 augroup packer_user_config
 autocmd!
 autocmd BufWritePost plugins.lua source <afile> | PackerSync
 augroup end
]])

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init({
  display = {
    open_fn = function()
      return require("packer.util").float({ border = "rounded" })
    end,
  },
})

-- Install plugins here

return packer.startup(function(use)
  -- plugins here

  -- LSP
  use({ "zbirenbaum/copilot.lua" })     -- GitHub copilot


  -- programming language related
  use({ "ray-x/go.nvim", run = ":GoUpdateBinaries" }) -- Go
  
  -- Git specific
  use("tpope/vim-fugitive")
  use("sindrets/diffview.nvim")


  -- utils
  use("rcarriga/nvim-notify") -- cool notification


  use("ahmedkhalf/project.nvim")


  -- Automatically setup config after cloning Packer repo
  -- Should always be at end of other plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
