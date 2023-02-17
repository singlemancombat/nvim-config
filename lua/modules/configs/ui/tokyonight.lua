return function()
  require("tokyonight").setup({
    on_highlights = function(hl, c)
      hl.IndentBlanklineContextChar = {
        fg = c.dark5,
      }
      hl.TSConstructor = {
        fg = c.blue1,
      }
      hl.TSTagDelimiter = {
        fg = c.dark5,
      }
    end,
  })
end
