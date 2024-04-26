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
    local name = string.gsub(venv_name, vim.fn.expand("$HOME/.pyenv/versions/"), "🐍 ")
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

  hl_override = {

    Comment = { italic = true },
    Variable = { italic = true },
    Keyword = { italic = true, bold = true },
    Function = { italic = true },
    Statement = { italic = true },
    Define = { italic = true },
    -- imports
    Include = {
      italic = true,
    },
    -- for, while loops
    Repeat = {
      italic = true,
    },
    -- if statements
    Conditional = {
      italic = true,
    },
    -- class, with, as keywords
    ["@keyword"] = {
      italic = true,
      bold = true,
    },
    -- function keyword
    ["@keyword.function"] = {
      italic = true,
    },
    -- return, yield keywords
    ["@keyword.return"] = {
      bold = true,
    },
    -- function names
    ["@function"] = {
      italic = false,
      bold = true,
    },
    -- symbolic
    ["@operator"] = {
      bold = true,
    },
    -- logical keywords
    ["@keyword.operator"] = {
      italic = true,
    },
    -- function parameters
    ["@parameter"] = {
      italic = true,
    },
  },
}
M.plugins = "custom.plugins"
M.mappings = require("custom.mappings")

return M
