-- vim.cmd "colorscheme default"
--
-- local colorscheme = "gruvbox-material"
--
-- local status_ok, _ = pcall(vim.cmd, "colorscheme ".. colorscheme)
--
-- if not status_ok then
--   vim.notify(colorscheme .. " not found")
-- end

vim.cmd[[
try

  let g:gruvbox_material_background = 'hard'
  let g:gruvbox_material_enable_italic = 1
  let g:gruvbox_material_enable_bold = 1
  let g:gruvbox_material_transparent_background = 0

  colorscheme gruvbox-material

catch /.*/
  colorscheme default
endtry
]]
