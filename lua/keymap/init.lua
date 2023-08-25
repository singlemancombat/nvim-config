require("keymap.helpers")
-- local bind = require("keymap.bind")
-- local map_cr = bind.map_cr
-- local map_cu = bind.map_cu
-- local map_cmd = bind.map_cmd
-- local map_callback = bind.map_callback

-- Plugin keymaps
require("keymap.lazy")
require("keymap.completion")
require("keymap.editor")
require("keymap.lang")
require("keymap.tool")
require("keymap.ui")

-- User keymaps
local ok, mappings = pcall(require, "user.keymap.init")
if ok then
  require("modules.utils.keymap").replace(mappings)
end
