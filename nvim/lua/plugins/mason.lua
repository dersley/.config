return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
	},
	config = function()
		-- Import mason
		local mason = require("mason")
		local mason_lspconfig = require("mason-lspconfig")

		-- Enable mason
		mason.setup({})

		mason_lspconfig.setup({
			-- List of servers for mason to install
			ensure_installed = {
				"lua_ls",
				"html",
				"cssls",
				"tailwindcss",
				"pyright",
				"ruff",
				"jsonls",
				"rust_analyzer", -- rust
				"sqlls", -- sql
			},
			-- Auto-install configured servers (with lspconfig)
			automatic_installation = true,
		})
	end,
}
