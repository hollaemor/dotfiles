local status_ok, rust = pcall(require, "rust-tools")

if not status_ok then
  vim.notify('Rust-tools not installed')
  return
end

rust.setup({})
