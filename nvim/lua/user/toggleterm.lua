local status_ok, terminal = pcall(require, 'toggleterm')

if not status_ok then
  vim.notify('toggleterm not installed', 'warning')
  return
end
terminal.setup{}
