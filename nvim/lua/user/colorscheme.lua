--[[ require("tokyonight").setup({ ]]
--[[   transparent = true, ]]
--[[   style = "night", ]]
--[[   styles = { ]]
--[[     -- Style to be applied to different syntax groups ]]
--[[     -- Value is any valid attr-list value for `:help nvim_set_hl` ]]
--[[     comments = { italic = true }, ]]
--[[     keywords = { italic = true }, ]]
--[[     functions = {italic = true}, ]]
--[[     variables = {italic = false}, ]]
--[[     -- Background styles. Can be "dark", "transparent" or "normal" ]]
--[[     sidebars = "transparent", -- style for sidebars, see below ]]
--[[     floats = "dark", -- style for floating windows ]]
--[[   }, ]]
--[[ }) ]]

vim.cmd([[
try

  let g:gruvbox_material_background = 'hard'
  let g:gruvbox_material_enable_italic = 1
  let g:gruvbox_material_enable_bold = 1
  let g:gruvbox_material_transparent_background = 0
  let g:gruvbox_material_sign_column_background='none'

  let g:material_style = "darker"
  let g:sonokai_style = "default" " possible values: default, atlantis, espresso, andromeda, shusia, maia
  colorscheme gruvbox-material

catch /.*/
  colorscheme default
endtry
]])

-- require("material").setup({
--
-- 	contrast = {
-- 		sidebars = false, -- Enable contrast for sidebar-like windows ( for example Nvim-Tree )
-- 		floating_windows = false, -- Enable contrast for floating windows
-- 		line_numbers = false, -- Enable contrast background for line numbers
-- 		sign_column = false, -- Enable contrast background for the sign column
-- 		cursor_line = false, -- Enable darker background for the cursor line
-- 		non_current_windows = false, -- Enable darker background for non-current windows
-- 		popup_menu = false, -- Enable lighter background for the popup menu
-- 	},
--
-- 	italics = {
-- 		comments = true, -- Enable italic comments
-- 		keywords = false, -- Enable italic keywords
-- 		functions = true, -- Enable italic functions
-- 		strings = false, -- Enable italic strings
-- 		variables = false, -- Enable italic variables
-- 	},
--
-- 	contrast_filetypes = { -- Specify which filetypes get the contrasted (darker) background
-- 		"terminal", -- Darker terminal background
-- 		"packer", -- Darker packer background
-- 		"qf", -- Darker qf list background
-- 	},
--
-- 	high_visibility = {
-- 		lighter = false, -- Enable higher contrast text for lighter style
-- 		darker = false, -- Enable higher contrast text for darker style
-- 	},
--
-- 	disable = {
-- 		borders = false, -- Disable borders between verticaly split windows
-- 		background = false, -- Prevent the theme from setting the background (NeoVim then uses your teminal background)
-- 		term_colors = false, -- Prevent the theme from setting terminal colors
-- 		eob_lines = false, -- Hide the end-of-buffer lines
-- 	},
--
-- 	lualine_style = "default", -- Lualine style ( can be 'stealth' or 'default' )
--
-- 	async_loading = true, -- Load parts of the theme asyncronously for faster startup (turned on by default)
--
-- 	custom_highlights = {}, -- Overwrite highlights with your own
-- })
