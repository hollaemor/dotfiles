local status_ok, terminal = pcall(require, 'toggleterm')

if not status_ok then
  vim.notify('toggleterm not installed', 'warning')
  return
end
terminal.setup{
  direction = 'float',
  size = 20,
  close_on_exit = true,
  shell = vim.o.shell,
  hide_numbers = true,
  open_mapping = [[<c-\>]],
  shade_filetypes = {},
  start_in_insert = true,
  insert_mappings = true,
  shad_terminals = true,
  shade_factor = 1,
  float_opts = {
    border = 'curved',
    winblend = 3,
  },
}

function _G.set_terminal_keymaps()
  local opts = {noremap = true}
  vim.api.nvim_buf_set_keymap(0, 't', '<esc>', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', 'jk', [[<C-\><C-n>]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-h>', [[<C-\><C-n><C-W>h]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-j>', [[<C-\><C-n><C-W>j]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-k>', [[<C-\><C-n><C-W>k]], opts)
  vim.api.nvim_buf_set_keymap(0, 't', '<C-l>', [[<C-\><C-n><C-W>l]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')
