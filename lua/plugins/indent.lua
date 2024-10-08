return {
	{
		"shellRaining/hlchunk.nvim",
		init = function()
			-- vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, { pattern = "*", command = "EnableHL" })
			require("hlchunk").setup({
				chunk = {
					enable = true,
					use_treesitter = true,
					-- style = {
					-- 	{ fg = "#cdcdcd" },
					-- },
				},
				indent = {
					enable = false,
					chars = { "│", "¦", "┆", "┊" },
					use_treesitter = false,
				},
				blank = {
					enable = false,
				},
				line_num = {
					enable = true,
					use_treesitter = true,
				},
			})
		end,
	},
	-- {
	-- 	"lukas-reineke/indent-blankline.nvim",
	-- 	opts = {
	-- 		show_current_context = true,
	-- 		show_current_context_start = false,
	-- 	}
	-- },
}
