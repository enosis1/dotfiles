return {
	{
		"akinsho/bufferline.nvim",
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			vim.opt.termguicolors = true
			require("bufferline").setup({
				highlights = require("catppuccin.groups.integrations.bufferline").get(),
				options = {
					mode = "buffers",
					offsets = {
						{
							filetype = "neo-tree",
							text = "NeoTree",
							highlight = "Directory",
						},
					},
				},
				-- Tabs
				vim.keymap.set("n", "<Tab>", ":BufferLineCycleNext<CR>"),
				vim.keymap.set("n", "<s-Tab>", ":BufferLineCyclePrev<CR>"),
			})
		end,
	},
}
