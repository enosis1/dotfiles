return {
	"catppuccin/nvim",
	lazy = false,
	name = "catppuccin",
	priority = 1000,
	flavour = "mocha",
	config = function()
		require("catppuccin").setup({
			integrations = {
				neotree = true,
			},
		})
		vim.cmd.colorscheme("catppuccin")
	end,
}
