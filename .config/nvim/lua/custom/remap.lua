vim.g.mapleader = ' '
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set({"v", "n"}, "<leader>y", "\"+y")
vim.keymap.set({"v", "n"}, "<leader>Y", "\"+Y")

vim .keymap.set("n", "<C-n>", "<C-w>w")
vim.keymap.set("n", "<C-H>", "<cmd>vertical resize +5<CR>")
vim.keymap.set("n", "<C-K>", "<cmd>resize +5<CR>")
vim.keymap.set("n", "<C-J>", "<cmd>resize -5<CR>")
