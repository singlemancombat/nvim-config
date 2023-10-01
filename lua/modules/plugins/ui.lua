local ui = {}

ui["goolord/alpha-nvim"] = {
  lazy = true,
  event = "BufWinEnter",
  config = require("ui.alpha"),
}
ui["akinsho/bufferline.nvim"] = {
  lazy = true,
  event = { "BufReadPost", "BufAdd", "BufNewFile" },
  config = require("ui.bufferline"),
}
ui["MunifTanjim/nui.nvim"] = {
  lazy = true,
}
ui["maximilianlloyd/ascii.nvim"] = {
  lazy = false,
}
ui["Jint-lzxy/nvim"] = {
  lazy = false,
  branch = "refactor/syntax-highlighting",
  name = "catppuccin",
  config = require("ui.catppuccin"),
}
ui["sainnhe/edge"] = {
  lazy = true,
  config = require("ui.edge"),
}
ui["j-hui/fidget.nvim"] = {
  lazy = true,
  branch = "legacy",
  event = "LspAttach",
  config = require("ui.fidget"),
}
ui["lewis6991/gitsigns.nvim"] = {
  lazy = true,
  event = { "CursorHold", "CursorHoldI" },
  config = require("ui.gitsigns"),
}
ui["lukas-reineke/indent-blankline.nvim"] = {
	lazy = true,
	event = { "CursorHold", "CursorHoldI" },
  config = require("ui.indent-blankline"),
}
ui["nvim-lualine/lualine.nvim"] = {
  lazy = true,
  event = { "BufReadPost", "BufAdd", "BufNewFile" },
  config = require("ui.lualine"),
}
ui["zbirenbaum/neodim"] = {
	lazy = true,
	commit = "9477da0",
	event = "LspAttach",
	config = require("ui.neodim"),
}
ui["karb94/neoscroll.nvim"] = {
  lazy = true,
  event = { "CursorHold", "CursorHoldI" },
  config = require("ui.neoscroll"),
}
ui["shaunsingh/nord.nvim"] = {
  lazy = false,
  config = require("ui.nord"),
}
ui["AlexvZyl/nordic.nvim"] = {
  lazy = false,
  config = require("ui.nordic"),
}
ui["Shatur/neovim-ayu"] = {
  lazy = false,
  name = "ayu",
  config = require("ui.ayu"),
}
ui["folke/tokyonight.nvim"] = {
  lazy = false,
  name = "tokyonight",
  config = require("ui.tokyonight"),
}
ui["rebelot/kanagawa.nvim"] = {
  lazy = false,
  name = "kanagawa",
  config = require("ui.kanagawa"),
}
ui["NLKNguyen/papercolor-theme"] = {
  lazy = false,
  name = "papercolor",
}
ui["EdenEast/nightfox.nvim"] = {
  lazy = false,
  name = "nightfox",
  config = require("ui.nightfox"),
}
ui["rcarriga/nvim-notify"] = {
  lazy = true,
  event = "VeryLazy",
  config = require("ui.notify"),
}
ui["folke/paint.nvim"] = {
  lazy = true,
  event = { "CursorHold", "CursorHoldI" },
  config = require("ui.paint"),
}
ui["dstein64/nvim-scrollview"] = {
  lazy = true,
  event = { "BufReadPost", "BufAdd", "BufNewFile" },
  config = require("ui.scrollview"),
}
ui["edluffy/specs.nvim"] = {
  lazy = true,
  event = "CursorMoved",
  config = require("ui.specs"),
}

return ui
