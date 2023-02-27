--keymaps for new commands
vim.g.mapleader = " "

--general keymaps
vim.keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=") -- size windows equally
vim.keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window
vim.keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
vim.keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
vim.keymap.set("n", "<leader>nt", ":tabn<CR>") -- go to next tab
vim.keymap.set("n", "<leader>bt", ":tabn<CR>") -- go to previous tab

--nvim-tree
vim.keymap.set("n", "<leader><ESC>", ":NvimTreeToggle<CR>") -- opens nvim-tree
vim.keymap.set("n", "<leader><Tab>", ":NvimTreeFocus<CR>") -- focuses nvim-tree


--telescope fuzzy finder
vim.keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") --find files

--allows scroll wheel to work
vim.keymap.set("n", "<ScrollWheelDown>", "j")
vim.keymap.set("n", "<ScrollWheelUp>", "k")
