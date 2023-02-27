--options file

--line numbering
vim.opt.relativenumber = true
vim.opt.number = true

--tabs and indents
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.autoindent = true
vim.opt.smartindent = true

--appearance
vim.opt.termguicolors = true
vim.opt.background = "dark"

--clipboard
vim.opt.clipboard:append("unnamedplus")

--split windows
vim.opt.splitbelow = true;

--word conventions
vim.opt.iskeyword:append("_") -- one_word is now treated as one word

--scrolling
vim.opt.scrolloff=10

--cursor
vim.opt.guicursor="a:block"

vim.diagnostic.open_float()
