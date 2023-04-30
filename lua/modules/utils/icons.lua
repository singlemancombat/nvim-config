local icons = {}

local data = {
	kind = {
		Class = "ﴯ",
		Color = "",
		Constant = "",
		Constructor = "",
		Enum = "",
		EnumMember = "",
		Event = "",
		Field = "",
		File = "",
		Folder = "",
		Function = "",
		Interface = "",
		Keyword = "",
		Method = "",
		Module = "",
		Namespace = "",
		Number = "",
		Operator = "",
		Package = "",
		Property = "ﰠ",
		Reference = "",
		Snippet = "",
		Struct = "",
		Text = "",
		TypeParameter = "",
		Unit = "",
		Undefined = "",
		Value = "",
		Variable = "",
		-- ccls-specific icons.
		TypeAlias = "",
		Parameter = "",
		StaticMethod = "",
		Macro = "",
	},
	type = {
		Array = "",
		Boolean = "",
		Null = "ﳠ",
		Number = "",
		Object = "",
		String = "",
	},
	documents = {
		Default = "",
		File = "",
		Files = "",
		FileTree = "פּ",
		Import = "",
		Symlink = "",
	},
	git = {
		Add = "",
		Branch = "",
		Diff = "",
		Git = "",
		Ignore = "",
		Mod = "M",
		Mod_alt = "",
		Remove = "",
		Rename = "",
		Repo = "",
		Unmerged = "שׂ",
		Untracked = "ﲉ",
		Unstaged = "",
		Staged = "",
		Conflict = "",
	},
	ui = {
		ArrowClosed = "",
		ArrowOpen = "",
		BigCircle = "",
		BigUnfilledCircle = "",
		BookMark = "",
		Bug = "",
		Calendar = "",
		Check = "",
		ChevronRight = "",
		Circle = "",
		Close = "",
		Close_alt = "",
		CloudDownload = "",
		Comment = "",
		CodeAction = "",
		Dashboard = "",
		Emoji = "",
		EmptyFolder = "",
		EmptyFolderOpen = "",
		File = "",
		Fire = "",
		Folder = "",
		FolderOpen = "",
		Gear = "",
		History = "",
		Incoming = "",
		Indicator = "",
		Keyboard = "",
		Left = "",
		List = "",
		Square = "",
		SymlinkFolder = "",
		Lock = "",
		Modified = "✥",
		Modified_alt = "",
		NewFile = "",
		Newspaper = "",
		Note = "",
		Outgoing = "",
		Package = "",
		Pencil = "",
		Perf = "",
		Play = "",
		Project = "",
		Right = "",
		RootFolderOpened = "",
		Search = "",
		Separator = "",
		DoubleSeparator = "",
		SignIn = "",
		SignOut = "",
		Sort = "",
		Spell = "暈",
		Symlink = "",
		Table = "",
		Telescope = "",
	},
	diagnostics = {
		Error = "",
		Warning = "",
		Information = "",
		Question = "",
		Hint = "",
		-- Holo version
		Error_alt = "",
		Warning_alt = "",
		Information_alt = "",
		Question_alt = "",
		Hint_alt = "",
	},
	misc = {
		Campass = "",
		Code = "",
		EscapeST = "✺",
		Gavel = "",
		Glass = "",
		PyEnv = "",
		Squirrel = "",
		Tag = "",
		Tree = "",
		Watch = "",
		Lego = "",
		Vbar = "│",
		Add = "+",
		Added = "",
		Ghost = "",
		ManUp = "",
		Vim = "",
	},
	cmp = {
		Codeium = "",
		TabNine = "",
		Copilot = "",
		-- Add source-specific icons here
		buffer = "",
		cmp_tabnine = "",
		codeium = "",
		copilot = "",
		copilot_alt = "",
		latex_symbols = "",
		luasnip = "",
		nvim_lsp = "",
		nvim_lua = "",
		orgmode = "",
		path = "",
		spell = "暈",
		tmux = "",
		treesitter = "",
		undefined = "",
	},
	dap = {
		Breakpoint = "",
		BreakpointCondition = "ﳁ",
		BreakpointRejected = "",
		LogPoint = "",
		Pause = "",
		Play = "",
		RunLast = "↻",
		StepBack = "",
		StepInto = "",
		StepOut = "",
		StepOver = "",
		Stopped = "",
		Terminate = "ﱢ",
	},
}

---Get a specific icon set.
---@param category string|"kind"|"type"|"documents"|"git"|"ui"|"diagnostics"|"misc"|"cmp"|"dap"
---@param add_space? boolean @Add trailing space after the icon.
function icons.get(category, add_space)
  if add_space then
    return setmetatable({}, {
      __index = function(_, key)
        return data[category][key] .. " "
      end,
    })
  else
    return data[category]
  end
end

return icons
