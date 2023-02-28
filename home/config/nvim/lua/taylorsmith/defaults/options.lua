-- set various options
vim.opt.cursorline = true
vim.opt.title = true
vim.opt.termguicolors = true
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = "80"
vim.opt.clipboard = "unnamedplus"
vim.opt.cmdheight = 2

-- enable line numbers and increase column width
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 5

-- highlight all search matches as you type
vim.opt.hlsearch = true
vim.opt.incsearch = true

-- disable text wrapping
vim.opt.wrap = false

-- configure tab width
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.autoindent = true

-- ignore case when lowercase
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.infercase = true

vim.opt.fillchars = {
	diff = "╱",
}
