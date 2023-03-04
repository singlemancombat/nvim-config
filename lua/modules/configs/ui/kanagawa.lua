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
    colors = {
      palette = {},
      theme = {
        wave = {},
        lotus = {},
        dragon = {},
        all = {},
      },
    },
    overrides = function(colors) -- add/modify highlights
      return {}
    end,
    theme = "wave", -- load "default" theme or the experimental "light" theme
    background = {
      dark = "wave",
      light = "lotus",
    },
  })
end
