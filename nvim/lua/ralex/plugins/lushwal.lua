return {
	"oncomouse/lushwal.nvim",
	dependencies = {
		{ "rktjmp/lush.nvim" },
		{ "rktjmp/shipwright.nvim" },
	},
	config = function()
		vim.g.lushwal_configuration = {
			addons = {
				gitsigns_nvim = true,
				indent_blankline_nvim = true,
				lualine = true,
				markdown = true,
				mini_nvim = true,
				neogit = false,
				nvim_cmp = true,
				telescope_nvim = true,
				treesitter = true,
				which_key_nvim = true,
			},
		}
		require("lushwal").add_reload_hook({
			vim.cmd("LushwalCompile"),
		})
	end,
}
