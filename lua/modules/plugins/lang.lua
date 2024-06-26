local lang = {}

-- lang["fatih/vim-go"] = {
--   lazy = true,
--   ft = "go",
--   build = ":GoInstallBinaries",
--   config = require("lang.vim-go"),
-- }
lang["ray-x/navigator.lua"] = {
  lazy = true,
  config = require("lang.navigator"),
  dependencies = {
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
  },
}
lang["ray-x/go.nvim"] = {
  lazy = true,
  ft = { "go", "gomod" },
  build = ':lua require("go.install").update_all_sync()', -- if you need to install/update all binaries
  dependencies = { -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
  },
  config = require("lang.ray-go"),
  event = { "CmdlineEnter" },
}
lang["kevinhwang91/nvim-bqf"] = {
	lazy = true,
	ft = "qf",
	config = require("lang.bqf"),
	dependencies = {
		{ "junegunn/fzf", build = ":call fzf#install()" },
	},
}
lang["mfussenegger/nvim-jdtls"] = {
  lazy = true,
  ft = "java",
  config = require("lang.java"),
}
lang["scalameta/nvim-metals"] = {
  lazy = true,
  ft = "scala",
  config = require("lang.metals"),
  dependencies = { "nvim-lua/plenary.nvim" },
}
lang["mrcjkb/rustaceanvim"] = {
	lazy = true,
	ft = "rust",
	version = "^3",
	config = require("lang.rust"),
	dependencies = { "nvim-lua/plenary.nvim" },
}
lang["Saecki/crates.nvim"] = {
  lazy = true,
  event = "BufReadPost Cargo.toml",
  config = require("lang.crates"),
  dependencies = { "nvim-lua/plenary.nvim" },
}
lang["iamcco/markdown-preview.nvim"] = {
  lazy = true,
  ft = "markdown",
  build = ":call mkdp#util#install()",
}
lang["chrisbra/csv.vim"] = {
  lazy = true,
  ft = "csv",
}
lang["google/vim-jsonnet"] = {
  lazy = true,
  ft = { "jsonnet", "libsonnet" },
}
lang["hashivim/vim-terraform"] = {
  lazy = true,
  ft = "hcl",
}
return lang
