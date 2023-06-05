local status, saga = pcall(require, "lspsaga")
if not status then
  return
end

saga.setup({
  --[[ server_filetype_map = { ]]
  --[[   typescript = "typescript", ]]
  --[[   rust = "rust", ]]
  --[[ }, ]]
  symbol_in_winbar = {
    --[[ in_custom = true, ]]
    enable = true,
    --[[ separator = " ", ]]
    separator = " -> ",
    hide_keyword = true,
    show_file = true,
    folder_level = 1,
    respect_root = false,
    color_mode = true,

    --[[ jclick_support = function(node, clicks, button, _) ]]
    --[[ 	-- To see all avaiable details: vim.pretty_print(node) ]]
    --[[ 	local st = node.range.start ]]
    --[[ 	local en = node.range["end"] ]]
    --[[ 	if button == "l" then ]]
    --[[ 		if clicks == 2 then ]]
    --[[ 		-- double left click to do nothing ]]
    --[[ 		else -- jump to node's starting line+char ]]
    --[[ 			vim.fn.cursor(st.line + 1, st.character + 1) ]]
    --[[ 		end ]]
    --[[ 	elseif button == "r" then ]]
    --[[ 		vim.fn.cursor(en.line + 1, en.character + 1) ]]
    --[[ 	elseif button == "m" then ]]
    --[[ 		-- middle click to visual select node ]]
    --[[ 		vim.fn.cursor(st.line + 1, st.character + 1) ]]
    --[[ 		vim.cmd("normal v") ]]
    --[[ 		vim.fn.cursor(en.line + 1, en.character + 1) ]]
    --[[ 	end ]]
    --[[ end, ]]
  },
})
