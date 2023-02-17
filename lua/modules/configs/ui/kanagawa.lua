return function()
  require("kanagawa").setup({
    undercurl = true, -- enable undercurls
    commentstyle = { italic = true },
    functionstyle = {},
    keywordstyle = { italic = true },
    statementstyle = { bold = true },
    typestyle = {},
    variablebuiltinstyle = { italic = true },
    specialreturn = true, -- special highlight for the return keyword
    specialexception = true, -- special highlight for exception handling keywords
    transparent = false, -- do not set background color
    diminactive = false, -- dim inactive window `:h hl-normalnc`
    globalstatus = false, -- adjust window separators highlight for laststatus=3
    terminalcolors = true, -- define vim.g.terminal_color_{0,17}
    colors = {},
    overrides = {},
    theme = "default", -- load "default" theme or the experimental "light" theme
  })
end
