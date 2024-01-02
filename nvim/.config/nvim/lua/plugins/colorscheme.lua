return {
	"catppuccin/nvim",
	name = "colorscheme",
	lazy = false,
	priority = 999,
	config = function()
		vim.cmd("colorscheme catppuccin")
		require("catppuccin").setup({})
	end,
}

