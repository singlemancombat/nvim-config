return function()
  --- Default configuration
  require("sweetie").setup({
    -- Pop-up menu pseudo-transparency
    pumblend = {
      enable = true,
      transparency_amount = 20,
    },
    -- Override default sweetie color palettes
    -- Palette fields:
    --  bg
    --  fg
    --  bg_hl
    --  bg_alt
    --  fg_alt
    --  grey
    --  dark_grey
    --  red
    --  orange
    --  green
    --  teal
    --  yellow
    --  blue
    --  magenta
    --  violet
    --  cyan
    palette = {
      dark = {},
      light = {},
    },
    -- Override default highlighting groups options
    overrides = {
      -- Comment = { italic = false },
      -- CommentBold = { italic = false },
      -- Keyword = { italic = false },
      Boolean = { italic = false },
      Class = { italic = false },
      -- Optional, just if you use Java and you do not want some extra italics
      -- ["@type.java"] = { italic = false },
      -- ["@type.qualifier.java"] = { italic = false },
    },
    -- Custom plugins highlighting groups
    integrations = {
      lazy = true,
      neorg = true,
      neogit = true,
      telescope = true,
    },
    -- Enable custom cursor coloring even in terminal Neovim sessions
    cursor_color = true,
    -- Use sweetie's palette in `:terminal` instead of your default terminal colorscheme
    terminal_colors = true,
  })
end
