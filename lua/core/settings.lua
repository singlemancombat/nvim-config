local settings = {}

-- Set it to false if you want to use https to update plugins and treesitter parsers.
---@type boolean
settings["use_ssh"] = false

-- Set it to false if you don't use copilot
---@type boolean
settings["use_copilot"] = true

-- Set it to false if there are no need to format on save.
---@type boolean
settings["format_on_save"] = true

-- Set it to false if the notification after formatting is annoying.
---@type boolean
settings["format_notify"] = true

-- Set it to true if you prefer formatting ONLY the *changed lines* as defined by your version control system.
-- NOTE: This entry will only be respected if:
--  > The buffer to be formatted is under version control (Git or Mercurial);
--  > Any of the server attached to that buffer supports |DocumentRangeFormattingProvider| server capability.
-- Otherwise Neovim would fall back to format the whole buffer, and a warning will be issued.
---@type boolean
settings["format_modifications_only"] = false

-- Set the format disabled directories here, files under these dirs won't be formatted on save.
--- NOTE: Directories may contain regular expressions (grammar: vim). |regexp|
--- NOTE: Directories are automatically normalized. |vim.fs.normalize()|
---@type string[]
settings["format_disabled_dirs"] = {
  -- Example
  "~/format_disabled_dir",
}

-- Set it to false if diagnostics virtual text is annoying.
-- If disabled, you may browse lsp diagnostics using trouble.nvim (press `gt` to toggle it).
---@type boolean
settings["diagnostics_virtual_text"] = true

-- Set it to one of the values below if you want to change the visible severity level of lsp diagnostics.
-- Priority: `Error` > `Warning` > `Information` > `Hint`.
--  > e.g. if you set this option to `Warning`, only lsp warnings and errors will be shown.
-- NOTE: This entry only works when `diagnostics_virtual_text` is true.
---@type "Error"|"Warning"|"Information"|"Hint"
settings["diagnostics_level"] = "Hint"

-- Set the plugins to disable here.
-- Example: "Some-User/A-Repo"
---@type string[]
settings["disabled_plugins"] = {}

-- Set it to false if you don't use nvim to open big files.
---@type boolean
settings["load_big_files_faster"] = true

-- Change the colors of the global palette here.
-- Settings will complete their replacement at initialization.
-- Parameters will be automatically completed as you type.
-- Example: { sky = "#04A5E5" }
---@type palette[]
settings["palette_overwrite"] = {}

-- Set the colorscheme to use here.
-- Available values are: `catppuccin`, `catppuccin-latte`, `catppuccin-mocha`, `catppuccin-frappe`, `catppuccin-macchiato`, `edge`, `nord`.
---@type string
settings["colorscheme"] = "catppuccin-macchiato"

-- Set it to true if your terminal has transparent background.
---@type boolean
settings["transparent_background"] = false

-- Set background color to use here.
-- Useful if you would like to use a colorscheme that has a light and dark variant like `edge`.
-- Valid values are: `dark`, `light`.
---@type "dark"|"light"
settings["background"] = "dark"

-- Set the command for handling external URLs here. The executable must be available on your $PATH.
-- This entry is IGNORED on Windows and macOS, which have their default handlers builtin.
---@type string
settings["external_browser"] = "chrome-cli open"

-- Filetypes in this list will skip lsp formatting if rhs is true.
---@type table<string, boolean>
settings["formatter_block_list"] = {
  lua = false, -- example
}

-- Servers in this list will skip setting formatting capabilities if rhs is true.
---@type table<string, boolean>
settings["server_formatting_block_list"] = {
  lua_ls = true,
  tsserver = true,
  clangd = true,
  pylsp = true,
}

-- Set the language servers that will be installed during bootstrap here.
-- check the below link for all the supported LSPs:
-- https://github.com/neovim/nvim-lspconfig/tree/master/lua/lspconfig/server_configurations
settings["lsp_deps"] = {
  "bashls",
  "clangd",
  "gopls",
  "html",
  "jsonls",
  "lua_ls",
  "pylsp",
  "jdtls",
}

-- Set the general-purpose servers that will be installed during bootstrap here.
-- Check the below link for all supported sources.
-- in `code_actions`, `completion`, `diagnostics`, `formatting`, `hover` folders:
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins
settings["null_ls_deps"] = {
  -- formatting
  "black",
  "clang_format",
  "gofumpt",
  "goimports",
  "eslint_d",
  "jq",
  "markdownlint",
  -- "editorconfig_checker",
  "prettier",
  "shfmt",
  "stylua",
  "vint",

  -- diagnostics
  "shellcheck",
  -- "markdownlint",
}

-- Set the Debug Adapter Protocol (DAP) clients that will be installed and configured during bootstrap here.
-- Check the below link for all supported DAPs:
-- https://github.com/jay-babu/mason-nvim-dap.nvim/blob/main/lua/mason-nvim-dap/mappings/source.lua
---@type string[]
settings["dap_deps"] = {
  "codelldb", -- C-Family
  "delve", -- Go
  "python", -- Python (debugpy)
}

-- Set the Treesitter parsers that will be installed during bootstrap here.
-- Check the below link for all supported languages:
-- https://github.com/nvim-treesitter/nvim-treesitter#supported-languages
---@type string[]
settings["treesitter_deps"] = {
  "bash",
  "c",
  "cpp",
  "css",
  "go",
  "gomod",
  "html",
  "javascript",
  "json",
  "latex",
  "lua",
  "make",
  "markdown",
  "markdown_inline",
  "python",
  "rust",
  "typescript",
  "vimdoc",
  "vue",
  "yaml",
}

-- Settings for the neovim-guis like `neovide`, `neovim-qt`, etc.
-- NOTE: Only supports the options listed below.
settings["gui_config"] = {
	font_name = "JetBrainsMono Nerd Font",
	font_size = 12,
}

-- Settings for `neovide`.
-- NOTE: Get the full configurable options: https://neovide.dev/configuration.html
settings["neovide_config"] = {
	refresh_rate = 120,
	cursor_vfx_mode = "railgun",
	no_idle = true,
	cursor_animation_length = 0.03,
	cursor_trail_length = 0.05,
	cursor_antialiasing = true,
	cursor_vfx_opacity = 200.0,
	cursor_vfx_particle_lifetime = 1.2,
	cursor_vfx_particle_speed = 20.0,
	cursor_vfx_particle_density = 5.0,
}

return require("modules.utils").extend_config(settings, "user.settings")
