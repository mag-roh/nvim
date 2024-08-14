return {
	"akinsho/bufferline.nvim",
	event = "VeryLazy",
	config = function()
		require("bufferline").setup({
			options = {
				style_preset = "padded_slope",
				offsets = {
					{
						filetype = "neo-tree",
						text = "File Explorer", -- Optional: You can set a custom text here
						highlight = "Directory", -- Optional: Highlight group for the text
						text_align = "left", -- Align the text to the left
						separator = true, -- Add a separator to the offset
					},
				},
				indicator = {
					icon = "▎", -- this should be omitted if indicator style is not 'icon'
				},
				-- Additional bufferline options can be set here
				diagnostics_indicator = function(count, level)
					local icon = level:match("error") and " " or " "
					return " " .. icon .. count
				end,
			},
		})
	end,
}
