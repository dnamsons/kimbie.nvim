local configModule = require("kimbie.config")
local colors = require("kimbie.colors").setup(configModule.config)

local kimbie = {}

kimbie.normal = {
  a = { bg = colors.green, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.green },
  c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
}

kimbie.insert = {
  a = { bg = colors.blue, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.blue },
}

kimbie.command = {
  a = { bg = colors.purple, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.purple },
}

kimbie.visual = {
  a = { bg = colors.yellow, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.yellow },
}

kimbie.replace = {
  a = { bg = colors.red, fg = colors.black },
  b = { bg = colors.fg_gutter, fg = colors.red },
}

kimbie.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.fg_gutter, gui = "bold" },
  c = { bg = colors.bg_statusline, fg = colors.fg_gutter },
}

return kimbie
