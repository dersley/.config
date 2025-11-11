return {
	"ray-x/lsp_signature.nvim",
	event = "VeryLazy",
	config = function()
		require("lsp_signature").setup({
			bind = true,
			handler_opts = {
				border = "rounded",
			},
			hint_enable = false, -- virtual hint text
			floating_window = true,
			floating_window_above_cur_line = true,
			toggle_key = "<C-s>", -- toggle signature on and off with ctrl+s
		})
	end,
}
