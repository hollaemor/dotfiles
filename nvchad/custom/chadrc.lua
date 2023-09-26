---@type ChadrcConfig
local M = {}

local funcs = {}

funcs.venv = function()
  local status, selector = pcall(require, "venv-selector")

  if not status then
    return ""
  end

  local venv_name = selector.get_active_venv()

  if venv_name ~= nil then
    local name = string.gsub(venv_name, vim.fn.expand "$HOME/.pyenv/versions/", "🐍 ")
    return name .. " "
  else
    return ""
  end
end

M.ui = {
  theme = "gruvchad",

  statusline = {
    overriden_modules = function(modules)
      modules[9] = funcs.venv() --  replace CWD entry
      -- table.insert(modules, 9, funcs.venv())
    end,
  },
}
M.plugins = "custom.plugins"
M.mappings = require "custom.mappings"

return M
