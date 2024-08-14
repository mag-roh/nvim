return {
	{
		"tiagovla/tokyodark.nvim",
		opts = {
			transparent_background = true, -- set background to transparent
			gamma = 1.50, -- adjust the brightness of the theme
			styles = {
				comments = { italic = true }, -- style for comments
				keywords = { italic = true }, -- style for keywords
				identifiers = {}, -- style for identifiers
				functions = { bold = true, italic = true }, -- style for functions
				variables = { bold = true }, -- style for variables
			},
			terminal_colors = true, -- enable terminal colors
		},
		config = function(_, opts)
			require("tokyodark").setup(opts)
			vim.cmd([[colorscheme tokyodark]])
		end,
	},
}
