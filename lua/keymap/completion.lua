local bind = require("keymap.bind")
local map_cr = bind.map_cr
local map_cmd = bind.map_cmd
local map_callback = bind.map_callback

local plug_map = {
  ["n|<A-f>"] = map_cmd("<Cmd>FormatToggle<CR>"):with_noremap():with_desc("Formater: Toggle format on save"),
}
bind.nvim_load_mapping(plug_map)

local mapping = {}

function mapping.lsp(buf)
  local map = {
    -- LSP-related keymaps, work only when event = { "InsertEnter", "LspStart" }
    ["n|gli"] = map_cr("LspInfo"):with_buffer(buf):with_desc("lsp: Info"),
    ["n|glr"] = map_cr("LspRestart"):with_buffer(buf):with_nowait():with_desc("lsp: Restart"),
    ["n|go"] = map_cr("Lspsaga outline"):with_buffer(buf):with_desc("lsp: Toggle outline"),
    ["n|gjp"] = map_cr("Lspsaga diagnostic_jump_prev"):with_buffer(buf):with_desc("lsp: Prev diagnostic"),
    ["n|gjn"] = map_cr("Lspsaga diagnostic_jump_next"):with_buffer(buf):with_desc("lsp: Next diagnostic"),
    ["n|gsl"] = map_cr("Lspsaga show_line_diagnostics"):with_buffer(buf):with_desc("lsp: Line diagnostic"),
    ["n|gsc"] = map_cr("Lspsaga show_cursor_diagnostics"):with_buffer(buf):with_desc("lsp: Cursor diagnostic"),
    ["n|gsb"] = map_cr("Lspsaga show_buf_diagnostics"):with_buffer(buf):with_desc("lsp: Buffer diagnostic"),
    ["n|gr"] = map_cr("Lspsaga rename"):with_buffer(buf):with_desc("lsp: Rename in file range"),
    ["n|gR"] = map_cr("Lspsaga rename ++project"):with_buffer(buf):with_desc("lsp: Rename in project range"),
    ["n|K"] = map_cr("Lspsaga hover_doc"):with_buffer(buf):with_desc("lsp: Show doc"),
    ["nv|ga"] = map_cr("Lspsaga code_action"):with_buffer(buf):with_desc("lsp: Code action for cursor"),
    ["n|gd"] = map_cr("Lspsaga peek_definition"):with_buffer(buf):with_desc("lsp: Preview definition"),
    ["n|gD"] = map_cr("Lspsaga goto_definition"):with_buffer(buf):with_desc("lsp: Goto definition"),
    ["n|gp"] = map_cr("Lspsaga preview_definition"):with_buffer(buf):with_desc("lsp: Preview definition"),
    ["n|gt"] = map_cr("Lspsaga term_toggle"):with_buffer(buf):with_desc("lsp: Toggle term"),
    ["n|gh"] = map_cr("Lspsaga lsp_finder"):with_buffer(buf):with_desc("lsp: Show reference"),
    ["n|gci"] = map_cr("Lspsaga incoming_calls"):with_buffer(buf):with_desc("lsp: Show incoming calls"),
    ["n|gco"] = map_cr("Lspsaga outgoing_calls"):with_buffer(buf):with_desc("lsp: Show outgoing calls"),
  }
  bind.nvim_load_mapping(map)
end

return mapping
