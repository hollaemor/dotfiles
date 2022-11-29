local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup({
  options = {
    --[[ indicator = { icon = "▎", style = "icon" }, ]]
    diagnostics = "nvim_lsp",
    offsets = { { filetype = "NvimTree", text = "Explorer", padding = 1, text_align = "center" } },
    --[[ separator_style = "slant", ]]
  },
})
