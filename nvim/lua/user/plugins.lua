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
  use("wbthomason/packer.nvim") -- let packer manage itself
  use("nvim-lua/popup.nvim")
  use("nvim-lua/plenary.nvim")

  -- colorschemes
  use("sainnhe/sonokai")
  use("sainnhe/edge")
  use("sainnhe/everforest")
  use("sainnhe/gruvbox-material")
  use("folke/tokyonight.nvim")
  use("marko-cerovac/material.nvim")

  -- Dev Icons
  use("kyazdani42/nvim-web-devicons")

  -- Nvim Tree
  use("kyazdani42/nvim-tree.lua")

  -- Telescope
  use("nvim-telescope/telescope.nvim")

  -- Telescope extensions
  use("nvim-telescope/telescope-media-files.nvim")

  -- Treesitter
  use({ "nvim-treesitter/nvim-treesitter", run = ":TSUpdate" })

  -- LSP
  use("neovim/nvim-lspconfig") -- Collection of configurations for the built-in LSP client
  use("williamboman/nvim-lsp-installer") -- language server installer
  use("williamboman/mason.nvim")
  use("williamboman/mason-lspconfig.nvim")

  use("jose-elias-alvarez/null-ls.nvim") -- for formatters and linters

  -- Lualine
  use("hoob3rt/lualine.nvim")

  -- Bufferline
  use("akinsho/bufferline.nvim")

  use("lukas-reineke/indent-blankline.nvim") -- show indent lines in code
  use("norcalli/nvim-colorizer.lua") -- show colours inline for hex values

  -- completion plugins
  use("hrsh7th/nvim-cmp") -- Autocompletion plugin
  use("hrsh7th/cmp-nvim-lsp") -- LSP source for nvim-cmp
  use("saadparwaiz1/cmp_luasnip") -- Snippets source for nvim-cmp
  use("hrsh7th/cmp-buffer") -- buffer completions
  use("hrsh7th/cmp-path") -- path completions
  use("hrsh7th/cmp-cmdline") -- cmdline completions
  use("hrsh7th/cmp-nvim-lua")

  -- snippets
  use("L3MON4D3/LuaSnip") --snippet engine
  use("rafamadriz/friendly-snippets") -- a bunch of snippets to use

  use("windwp/nvim-autopairs") -- automatically close brackets and braces

  use("numToStr/Comment.nvim") -- Easily comment stuff
  use("JoosepAlviste/nvim-ts-context-commentstring")

  -- test runners
  use("vim-test/vim-test")

  use("hrsh7th/cmp-emoji") -- emogi supports
  use("p00f/nvim-ts-rainbow") -- uses different colors for bracket pairs

  -- programming language related
  use("simrat39/rust-tools.nvim") --rust
  use({ "ray-x/go.nvim", run = ":GoUpdateBinaries" }) -- Go
  use("mfussenegger/nvim-jdtls") -- java lsp
  use("ThePrimeagen/refactoring.nvim")

  -- Git specific
  use("tpope/vim-fugitive")
  use("sindrets/diffview.nvim")
  use("lewis6991/gitsigns.nvim") -- show git lines in gutter

  -- floating terminal
  use({ "akinsho/toggleterm.nvim" })

  -- utils
  use("folke/which-key.nvim")
  use("rcarriga/nvim-notify") -- cool notification

  use({
    "ur4ltz/surround.nvim",
    config = function()
      require("surround").setup({ mappings_style = "surround" })
    end,
  })

  use("mfussenegger/nvim-dap")
  use("rcarriga/nvim-dap-ui")
  use("mfussenegger/nvim-dap-python")
  use("nvim-neotest/neotest")
  use("nvim-neotest/neotest-python")
  use("rouge8/neotest-rust")
  use("nvim-neotest/neotest-go")
  use("theHamsta/nvim-dap-virtual-text")

  use("matbme/JABS.nvim")
  use("SmiteshP/nvim-navic")
  use({
    "folke/trouble.nvim",
    requires = "kyazdani42/nvim-web-devicons",
    config = function()
      require("trouble").setup({})
    end,
  })

  use({
    "j-hui/fidget.nvim",
    config = function()
      require("fidget").setup({})
    end,
  })

  use({ "kevinhwang91/nvim-bqf", ft = "qf" })

  use("AckslD/swenv.nvim") -- python switch virtual envs
  use("ahmedkhalf/project.nvim")

  use({ "glepnir/lspsaga.nvim" })
  use({ "fgheng/winbar.nvim" })

  use("Saecki/crates.nvim")

  use({
    "kevinhwang91/nvim-ufo",
    requires = "kevinhwang91/promise-async",
    config = function()
      require("ufo").setup()
      vim.keymap.set("n", "zR", require("ufo").openAllFolds)
      vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
    end,
  }) -- LSP based folding
  -- Automatically setup config after cloning Packer repo
  -- Should always be at end of other plugins
  if PACKER_BOOTSTRAP then
    require("packer").sync()
  end
end)
