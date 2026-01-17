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
vim.keymap.set("i", "jh", "<Esc>")
vim.keymap.set("n", "<leader>q", "<cmd>q<CR>")
vim.keymap.set({"n", "v", "i"}, "<C-f>", "<cmd> lua vim.lsp.buf.format()<CR>")


vim.keymap.set("n", "<leader>ts", function ()
    local a = tonumber(vim.fn.input("Tap Space:"))
    vim.opt.tabstop = a
    vim.opt.softtabstop = a
    vim.opt.shiftwidth = a
end)

vim.keymap.set({"n", "v"}, ",m", "]m", { remap = true })
vim.keymap.set({"n", "v"}, ",,m", "[m", { remap = true })


--vim.keymap.set("n", ",m", function()
--  require("nvim-treesitter.textobjects.move").goto_next_start("@function.outer")
--end)
--
--vim.keymap.set("n", ",,m", function()
--  require("nvim-treesitter.textobjects.move").goto_previous_start("@function.outer")
--end)
--
