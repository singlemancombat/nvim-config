return function()
  local icons = { ui = require("modules.utils.icons").get("ui") }

<<<<<<< HEAD
  local opts = {
    options = {
      number = nil,
      modified_icon = icons.ui.Modified,
      buffer_close_icon = icons.ui.Close,
      left_trunc_marker = icons.ui.Left,
      right_trunc_marker = icons.ui.Right,
      max_name_length = 20,
      max_prefix_length = 13,
      tab_size = 20,
      color_icons = true,
      show_buffer_icons = true,
      show_buffer_close_icons = true,
      show_close_icon = true,
      show_tab_indicators = true,
      enforce_regular_tabs = false,
      persist_buffer_sort = true,
      always_show_bufferline = true,
      separator_style = "thin",
      diagnostics = "nvim_lsp",
      diagnostics_indicator = function(count)
        return "(" .. count .. ")"
      end,
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          text_align = "center",
          padding = 0,
        },
        {
          filetype = "aerial",
          text = "Symbol Outline",
          text_align = "center",
          padding = 0,
        },
      },
    },
    -- Change bufferline's highlights here! See `:h bufferline-highlights` for detailed explanation.
    -- Note: If you use catppuccin then modify the colors below!
    highlights = {},
  }
||||||| parent of 5f567d4 (fix(bufferline): use `BufDel %d` instead of `bdelete! %d` (#1136))
	local opts = {
		options = {
			number = nil,
			modified_icon = icons.ui.Modified,
			buffer_close_icon = icons.ui.Close,
			left_trunc_marker = icons.ui.Left,
			right_trunc_marker = icons.ui.Right,
			max_name_length = 20,
			max_prefix_length = 13,
			tab_size = 20,
			color_icons = true,
			show_buffer_icons = true,
			show_buffer_close_icons = true,
			show_close_icon = true,
			show_tab_indicators = true,
			enforce_regular_tabs = false,
			persist_buffer_sort = true,
			always_show_bufferline = true,
			separator_style = "thin",
			diagnostics = "nvim_lsp",
			diagnostics_indicator = function(count)
				return "(" .. count .. ")"
			end,
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					text_align = "center",
					padding = 0,
				},
				{
					filetype = "aerial",
					text = "Symbol Outline",
					text_align = "center",
					padding = 0,
				},
			},
		},
		-- Change bufferline's highlights here! See `:h bufferline-highlights` for detailed explanation.
		-- Note: If you use catppuccin then modify the colors below!
		highlights = {},
	}
=======
	local opts = {
		options = {
			number = nil,
			close_command = "BufDel %d",
			right_mouse_command = "BufDel %d",
			modified_icon = icons.ui.Modified,
			buffer_close_icon = icons.ui.Close,
			left_trunc_marker = icons.ui.Left,
			right_trunc_marker = icons.ui.Right,
			max_name_length = 20,
			max_prefix_length = 13,
			tab_size = 20,
			color_icons = true,
			show_buffer_icons = true,
			show_buffer_close_icons = true,
			show_close_icon = true,
			show_tab_indicators = true,
			enforce_regular_tabs = false,
			persist_buffer_sort = true,
			always_show_bufferline = true,
			separator_style = "thin",
			diagnostics = "nvim_lsp",
			diagnostics_indicator = function(count)
				return "(" .. count .. ")"
			end,
			offsets = {
				{
					filetype = "NvimTree",
					text = "File Explorer",
					text_align = "center",
					padding = 0,
				},
				{
					filetype = "aerial",
					text = "Symbol Outline",
					text_align = "center",
					padding = 0,
				},
			},
		},
		-- Change bufferline's highlights here! See `:h bufferline-highlights` for detailed explanation.
		-- Note: If you use catppuccin then modify the colors below!
		highlights = {},
	}
>>>>>>> 5f567d4 (fix(bufferline): use `BufDel %d` instead of `bdelete! %d` (#1136))

  if vim.g.colors_name == "nord" then
    local nord_hl_overwrite = {
      highlights = require("nord").bufferline.highlights({
        italic = true,
        bold = true,
        fill = "#181c24",
      }),
    }
    opts = vim.tbl_deep_extend("force", opts, nord_hl_overwrite)
  end

  if vim.g.colors_name:find("catppuccin") then
    local cp = require("modules.utils").get_palette() -- Get the palette.
    local catppuccin_hl_overwrite = {
      highlights = require("catppuccin.groups.integrations.bufferline").get({
        styles = { "italic", "bold" },
        custom = {
          all = {
            -- Hint
            hint = { fg = cp.rosewater },
            hint_visible = { fg = cp.rosewater },
            hint_selected = { fg = cp.rosewater },
            hint_diagnostic = { fg = cp.rosewater },
            hint_diagnostic_visible = { fg = cp.rosewater },
            hint_diagnostic_selected = { fg = cp.rosewater },
          },
        },
      }),
    }
    opts = vim.tbl_deep_extend("force", opts, catppuccin_hl_overwrite)
  end

  require("modules.utils").load_plugin("bufferline", opts)
end
