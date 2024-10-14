-- This file  needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/NvChad/blob/v2.5/lua/nvconfig.lua

---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "gruvbox",
  transparency = false,

  hl_override = {
    Comment = { italic = true },
    ["@comment"] = { italic = true },
    Keyword = { italic = true },
    ["@keyword"] = { italic = true },

    -- function keyword
    ["@keyword.function"] = {
      italic = true,
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

    Function = { italic = true },
    Statement = { italic = true },
    Define = { italic = true },
    ["@lsp.type.decorator"] = { bold = true, italic = true , link="Function"},
    ["@lsp.type.parameter"] = { bold = true, italic = true },
    Special = { italic = true },
    ["@special"] = { italic = true },
  },
}

return M
