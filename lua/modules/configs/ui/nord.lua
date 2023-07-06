return function()
  vim.g.nord_contrast = true
  vim.g.nord_borders = false
  vim.g.nord_cursorline_transparent = false
  vim.g.nord_disable_background = require("core.settings").transparent_background
  vim.g.nord_enable_sidebar_background = true
  vim.g.nord_italic = true
  vim.g.nord_bold = false
end
