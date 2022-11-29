local status_ok, rt = pcall(require, "rust-tools")

if not status_ok then
  vim.notify("Rust-tools not installed")
  return
end

local _, lsp_utils = pcall(require, "user.lsp.utils")
rt.setup({
  server = {
    on_attach = function(client, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
      lsp_utils.lsp_keymaps(bufnr)
      lsp_utils.lsp_highlight_document(client)
    end,
  },
})
