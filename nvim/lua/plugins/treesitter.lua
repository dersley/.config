return {
	"nvim-treesitter/nvim-treesitter",
	event = { "BufReadPre", "BufNewFile" },
	build = ":TSUpdate",
	config = function()
		local treesitter = require("nvim-treesitter.configs")

		treesitter.setup({
			-- Enable syntax highlighting
			highlight = {
				enable = true,
			},

			-- Enable indentation
			indent = { enable = true },

			-- Ensure these language parsers are installed
			ensure_installed = {
				"json",
				"javascript",
				"typescript",
				"tsx",
				"yaml",
				"html",
				"css",
				"markdown",
				"markdown_inline",
				"bash",
				"lua",
				"vim",
				"dockerfile",
				"gitignore",
				"python",
				"rust",
				"sql",
			},

			-- Auto install parsers when entering a buffer
			auto_install = true,
		})
	end,
}
