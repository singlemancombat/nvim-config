local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cu = bind.map_cu
-- local map_cmd = bind.map_cmd
local map_callback = bind.map_callback

local plug_map = {
  -- LSP-related keymaps, work only when event = { "InsertEnter", "LspStart" }
  ["n|gli"] = map_cr("LspInfo"):with_noremap():with_silent():with_nowait():with_desc("lsp: Info"),
  ["n|glr"] = map_cr("LspRestart"):with_noremap():with_silent():with_nowait():with_desc("lsp: Restart"),
  ["n|go"] = map_cr("Lspsaga outline"):with_noremap():with_silent():with_desc("lsp: Toggle outline"),
  ["n|gjp"] = map_cr("Lspsaga diagnostic_jump_prev"):with_noremap():with_silent():with_desc("lsp: Prev diagnostic"),
  ["n|gjn"] = map_cr("Lspsaga diagnostic_jump_next"):with_noremap():with_silent():with_desc("lsp: Next diagnostic"),
  ["n|gsl"] = map_cr("Lspsaga show_line_diagnostics"):with_noremap():with_silent():with_desc("lsp: Line diagnostic"),
  ["n|gsc"] = map_cr("Lspsaga show_cursor_diagnostics")
    :with_noremap()
    :with_silent()
    :with_desc("lsp: Cursor diagnostic"),
  ["n|gsb"] = map_cr("Lspsaga show_buf_diagnostics"):with_noremap():with_silent():with_desc("lsp: Buffer diagnostic"),
  ["n|gss"] = map_callback(function()
      vim.lsp.buf.signature_help()
    end)
    :with_noremap()
    :with_silent()
    :with_desc("lsp: Signature help"),
  ["n|gr"] = map_cr("Lspsaga rename"):with_noremap():with_silent():with_desc("lsp: Rename in file range"),
  ["n|gR"] = map_cr("Lspsaga rename ++project"):with_noremap():with_silent():with_desc("lsp: Rename in project range"),
  ["n|K"] = map_cr("Lspsaga hover_doc"):with_noremap():with_silent():with_desc("lsp: Show doc"),
	["nv|ga"] = map_cr("Lspsaga code_action"):with_noremap():with_silent():with_desc("lsp: Code action"),
  ["n|gd"] = map_cr("Lspsaga peek_definition"):with_noremap():with_silent():with_desc("lsp: Preview definition"),
  ["n|gD"] = map_cr("Lspsaga goto_definition"):with_noremap():with_silent():with_desc("lsp: Goto definition"),
  ["n|gp"] = map_cr("Lspsaga preview_definition"):with_noremap():with_silent():with_desc("lsp: Preview definition"),
  ["n|gh"] = map_cr("Lspsaga lsp_finder"):with_noremap():with_silent():with_desc("lsp: Show reference"),
  ["n|gt"] = map_cr("Lspsaga term_toggle"):with_noremap():with_silent():with_desc("lsp: Toggle term"),
  ["n|gci"] = map_cr("Lspsaga incoming_calls"):with_noremap():with_silent():with_desc("lsp: Show incoming calls"),
  ["n|gco"] = map_cr("Lspsaga outgoing_calls"):with_noremap():with_silent():with_desc("lsp: Show outgoing calls"),
}

bind.nvim_load_mapping(plug_map)
