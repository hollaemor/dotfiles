local present, lualine = pcall(require, "lualine")
if not present then
  return
end

-- cool function for progress
local progress = function()
  local current_line = vim.fn.line(".")
  local total_lines = vim.fn.line("$")
  local chars = { "__", "▁▁", "▂▂", "▃▃", "▄▄", "▅▅", "▆▆", "▇▇", "██" }
  local line_ratio = current_line / total_lines
  local index = math.ceil(line_ratio * #chars)
  return chars[index]
end

local layout = {
  lualine_a = {
    {
      function()
        return "󱄛"
      end,
      separator = { left = "", right = "" },
    },
  },
  lualine_b = {
    {
      "filetype",
      icon_only = true,
      colored = true,
      color = { bg = "", fg = "" },
    },
    {
      "filename",
      color = { bg = "", fg = "" },
      separator = { left = "", right = "" },
    },
    {
      "branch",
      icon = "",
      color = { bg = "#242735", fg = "#c296eb" },
      separator = { left = "", right = "" },
    },
    {
      "diff",
      colored = true,
      symbols = {
        added = " ",
        modified = " ",
        removed = " ",
      },
      color = { bg = "#242735" },
      separator = { left = "", right = "" },
    },
  },
  lualine_c = {
    -- {
    --   function()
    --     return ""
    --   end,
    --   color = { bg = "#8FCDA9", fg = "#121319" },
    --   separator = { left = "", right = "" },
    -- },
    {
      "diagnostics",
      sources = { "nvim_lsp" },
      sections = {
        "info",
        "error",
        "warn",
        "hint",
      },
      diagnostic_color = {
        error = { fg = "#820e2d", bg = "#0f111a" },
        warn = { fg = "DiagnosticWarn", bg = "#0f111a" },
        info = { fg = "DiaganosticInfo", bg = "#0f111a" },
        hint = { fg = "#92CDE7", bg = "#0f111a" },
      },
      colored = true,
      update_in_insert = true,
      always_visible = false,
      symbols = { error = " ", warn = " ", info = " ", hint = " " },
      separator = { left = "", right = "" },
    },
  },
  lualine_x = {},
  lualine_y = {},
  lualine_z = {
    {
      "swenv",
      icon = "",
      color = "StatusLine",
      separator = { left = "", right = "" },
    },
    {
      "filesize",
      color = "StatusLine",
      separator = { left = "", right = "" },
    },
    {
      function()
        return ""
      end,
      separator = { left = "", right = "" },
      color = { bg = "#C296EB" },
    },
    {
      progress,
      -- color = "StatusLine",
      color = { bg = "#ECD3A0" },
      separator = { left = "", right = "" },
    },
    -- {
    --   function()
    --     return ""
    --   end,
    --   separator = { left = "", right = "" },
    --   color = { bg = "#ECD3A0" },
    -- },
    {
      "location",
      color = "StatusLine",
    },
    {
      function()
        return ""
      end,
      separator = { left = "", right = "" },
      color = { bg = "#86AAEC" },
    },
  },
}

local no_layout = {
  lualine_a = {},
  lualine_b = {},
  lualine_c = {},
  lualine_x = {},
  lualine_y = {},
  lualine_z = {},
}

lualine.setup({
  sections = layout,
  inactive_sections = no_layout,
  options = {
    icons_enabled = true,
    globalstatus = false,
    disabled_filetypes = { "alpha", "dashboard", "NvimTree", "Outline" },
    always_divide_middle = true,
    theme = require("user.transparent_lualine").theme(),
  },
})
