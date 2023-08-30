return function()
  require("modules.utils").load_plugin("neorg", {
    load = {
      ["core.defaults"] = {}, -- Loads default behaviour
      ["core.concealer"] = {}, -- Adds pretty icons to your documents
      ["core.dirman"] = { -- Manages Neorg workspaces
        config = {
          workspaces = {
            work = "~/notes/work",
            private = "~/notes/private",
            code = "~/notes/code",
          },
        },
      },
    },
  })
end
