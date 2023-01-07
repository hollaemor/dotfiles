local options = {
  background = "dark",
  clipboard = "unnamedplus",
  completeopt = { "menu", "menuone", "noselect" }, -- mostly just for cmp
  mouse = "a",
  fileencoding = "utf-8",
  relativenumber = true,
  syntax = "on",
  swapfile = false,
  cursorline = false,
  scrolloff = 10,
  foldmethod = "indent",
  foldlevel = 99,
  foldenable = true,
  foldcolumn = "1",
  foldlevelstart = -1,
  ignorecase = true,
  hidden = true,
  backup = false,
  writebackup = false,
  showmode = false,
  hlsearch = true,
  updatetime = 200,
  tabstop = 2,
  expandtab = true,
  shiftwidth = 2,
  signcolumn = "yes",
  undofile = true, -- save undo history
  termguicolors = true,
}

vim.opt.shortmess:append("c")
for k, v in pairs(options) do
  vim.opt[k] = v
end
