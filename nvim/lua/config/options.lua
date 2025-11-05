local opt = vim.opt


-- Line numbers
opt.number = true
opt.relativenumber = true


-- Sign column
opt.signcolumn = "yes"


-- Tabs and indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true


-- Line wrapping
opt.textwidth = 88
opt.wrap = false


-- Search settings with /
opt.ignorecase = true
opt.smartcase = true


-- Cursor line
opt.cursorline = true


-- Clipboard
opt.clipboard:append("unnamedplus")


-- Split windows
opt.splitright = true
opt.splitbelow = true


-- Decrease update time
opt.updatetime = 250


-- Undo
opt.undofile = true


-- Keep cursor within some number of lines from top/bottom of screen
opt.scrolloff = 10


-- Ask to save any modified files before closing (avoids error dialogue)
opt.confirm = true

