return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status") -- to configure lazy pending updates count

		-- configure lualine with modified theme
		lualine.setup({
			options = {
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = false,
				theme = "pywal",
				component_separators = { left = " ", right = " " },
				section_separators = { left = "", right = "" },
			},
			sections = {
				lualine_a = { { "mode", icons_enabled = true, separator = { left = "" }, right_padding = 2 } },
				lualine_b = { "filename", "branch" },
				lualine_c = { "%=" },
				lualine_x = {
					{ lazy_status.updates, cond = lazy_status.has_updates, color = { fg = "#ff9e64" } },
					{ "encoding" },
					{ "fileformat" },
					{ "filetype" },
				},
				lualine_y = { "progress" },
				lualine_z = { { "location", separator = { right = "" }, left_padding = 2 } },
			},
		})
	end,
}
