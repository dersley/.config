-- Set leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Set nerd font
vim.g.have_nerd_font = true


-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
    		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)


-- Load config
require("config.options")
require("config.keymaps")


-- Setup plugins
require("lazy").setup("plugins", {
	change_detection = {
		notify = false,
	},
})

