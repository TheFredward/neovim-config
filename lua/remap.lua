vim.g.mapleader = " "
-- .keymap.set( {mode}, {lhs}-keyToBind, {rhs}-actionToExecute, {opts}-lua table)
vim.keymap.set("i", "jj", "<Esc>")
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
-- Copy, Delete Move --
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '>-2<CR>gv=gv")
vim.keymap.set({"n", "x"}, "<leader>y", '\"+y')
vim.keymap.set("x", "<leader>p", "\"_dP")
-- Jump Movement --
vim.keymap.set("n","<C-d>","<C-d>zz")
vim.keymap.set("n","<C-u>","<C-u>zz")
-- Split window movement --
vim.keymap.set("n","<C-j>","<C-w>j")
vim.keymap.set("n","<C-k>","<C-w>k")
vim.keymap.set("n","<C-h>","<C-w>h")
vim.keymap.set("n","<C-l>","<C-w>l")

