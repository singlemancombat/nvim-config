local tool = {}

---@alias lc.lang
---| "cpp"
---| "java"
---| "python"
---| "python3"
---| "c"
---| "csharp"
---| "javascript"
---| "typescript"
---| "php"
---| "swift"
---| "kotlin"
---| "dart"
---| "golang"
---| "ruby"
---| "scala"
---| "rust"
---| "racket"
---| "erlang"
---| "elixir"

---@alias lc.sql_lang
---| "pythondata"
---| "mysql"
---| "mssql"
---| "oraclesql"

---@alias lc.domain
---| "com"
---| "cn"

tool["tpope/vim-fugitive"] = {
  lazy = true,
  cmd = { "Git", "G" },
}
-- only for fcitx5 user who uses non-English language during coding
-- tool["pysan3/fcitx5.nvim"] = {
--  lazy = true,
--  event = "BufReadPost",
--  cond = vim.fn.executable("fcitx5-remote") == 1,
--  config = require("tool.fcitx5"),
-- }
tool["nvim-tree/nvim-tree.lua"] = {
  lazy = true,
  cmd = {
    "NvimTreeToggle",
    "NvimTreeOpen",
    "NvimTreeFindFile",
    "NvimTreeFindFileToggle",
    "NvimTreeRefresh",
  },
  config = require("tool.nvim-tree"),
}
tool["ibhagwan/smartyank.nvim"] = {
  lazy = true,
  event = "BufReadPost",
  config = require("tool.smartyank"),
}
tool["michaelb/sniprun"] = {
	lazy = true,
	-- You need to cd to `~/.local/share/nvim/site/lazy/sniprun/` and execute `bash ./install.sh`,
	-- if you encountered error about no executable sniprun found.
	build = "bash ./install.sh",
	cmd = { "SnipRun", "SnipReset", "SnipInfo" },
	config = require("tool.sniprun"),
}
tool["akinsho/toggleterm.nvim"] = {
  lazy = true,
  cmd = {
    "ToggleTerm",
    "ToggleTermSetName",
    "ToggleTermToggleAll",
    "ToggleTermSendVisualLines",
    "ToggleTermSendCurrentLine",
    "ToggleTermSendVisualSelection",
  },
  config = require("tool.toggleterm"),
}
tool["folke/trouble.nvim"] = {
  lazy = true,
  cmd = { "Trouble", "TroubleToggle", "TroubleRefresh" },
  config = require("tool.trouble"),
}
tool["folke/which-key.nvim"] = {
  lazy = true,
  event = { "CursorHold", "CursorHoldI" },
  config = require("tool.which-key"),
}
tool["gelguy/wilder.nvim"] = {
  lazy = true,
  event = "CmdlineEnter",
  config = require("tool.wilder"),
  dependencies = { "romgrk/fzy-lua-native" },
}
tool["alexghergh/nvim-tmux-navigation"] = {
  lazy = false,
  config = require("tool.nvim-tmux-navigation"),
}

----------------------------------------------------------------------
--                        Telescope Plugins                         --
----------------------------------------------------------------------
tool["nvim-telescope/telescope.nvim"] = {
  lazy = true,
  cmd = "Telescope",
  config = require("tool.telescope"),
  dependencies = {
    { "nvim-tree/nvim-web-devicons" },
    { "nvim-lua/plenary.nvim" },
    { "debugloop/telescope-undo.nvim" },
    {
      "ahmedkhalf/project.nvim",
      event = { "CursorHold", "CursorHoldI" },
      config = require("tool.project"),
    },
    { "jvgrootveld/telescope-zoxide" },
    { "nvim-telescope/telescope-frecency.nvim" },
    { "nvim-telescope/telescope-live-grep-args.nvim" },
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
  },
}

----------------------------------------------------------------------
--                           DAP Plugins                            --
----------------------------------------------------------------------
tool["mfussenegger/nvim-dap"] = {
  lazy = true,
  cmd = {
    "DapSetLogLevel",
    "DapShowLog",
    "DapContinue",
    "DapToggleBreakpoint",
    "DapToggleRepl",
    "DapStepOver",
    "DapStepInto",
    "DapStepOut",
    "DapTerminate",
  },
  config = require("tool.dap"),
  dependencies = {
    {
      "rcarriga/nvim-dap-ui",
      config = require("tool.dap.dapui"),
    },
    {
      "theHamsta/nvim-dap-virtual-text",
      config = require("tool.dap.dap-virtual-text"),
    },
    { "jay-babu/mason-nvim-dap.nvim" },
  },
}

----------------------------------------------------------------------
--                            Org Mode !                            --
----------------------------------------------------------------------
tool["nvim-neorg/neorg"] = {
  lazy = false,
  build = ":Neorg sync-parsers",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = require("tool.neorg"),
}

----------------------------------------------------------------------
--                              LeetCode                            --
----------------------------------------------------------------------
tool["kawre/leetcode.nvim"] = {
  build = ":TSUpdate html",
  dependencies = {
    "nvim-treesitter/nvim-treesitter",
    "nvim-telescope/telescope.nvim",
    "nvim-lua/plenary.nvim", -- required by telescope
    "MunifTanjim/nui.nvim",
    -- optional
    "nvim-tree/nvim-web-devicons",
    -- recommended
    "rcarriga/nvim-notify",
  },
  opts = {
    -- configuration goes here
    ---@type lc.domain
    domain = "com", -- For now "com" is the only one supported
    ---@type string
    arg = "leetcode.nvim",
    ---@type lc.lang
    lang = "golang",
    ---@type lc.sql_lang
    sql = "mysql",
    ---@type string
    directory = vim.fn.stdpath("data") .. "/leetcode/",
    ---@type boolean
    logging = true,
    console = {
      size = {
        width = "75%", ---@type string | integer
        height = "75%", ---@type string | integer
      },
      dir = "row", ---@type "col" | "row"
    },
    description = {
      width = "40%", ---@type string | integer
    },
  },
}

return tool
