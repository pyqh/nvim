vim.g.mapleader = " "
local opts = { noremap = true, silent = true }
local function map(mode, lhs, rhs)
	vim.keymap.set(mode, lhs, rhs, opts)
end

map("n", "<Space>", "<NOP>")
map("n", "p", "<NOP>")

map("v", "<BS>", '"_d')
map("v", "x", '"+x')
map("v", "c", '"+y')

map("n", "s", "<cmd>w<CR>")
map("n", "z", "u")
map("n", "y", "<C-r>")
map("n", "w", "<cmd>bd!<CR>")
map("n", "q", "<cmd>q<CR>")
map("n", "\\", "<C-w>v")

map("n", "<TAB>", ">>")
map("n", "<S-TAB>", "<<")

map("i", "jj", "<ESC>")
map("i", "jk", "<ESC>")

map("n", ";", "<Home>")
map("n", "'", "<End>")

map("n", ",", "<C-u>")
map("n", ".", "<C-d>")

map("n", "<S-j>", "<cmd>m .+1<cr>==")
map("n", "<S-k>", "<cmd>m .-2<cr>==")
map("v", "<S-j>", ":m '>+1<CR>gv=gv")
map("v", "<S-k>", ":m '<-2<CR>gv=gv")

map("n", "m", "<cmd>bnext<CR>")

map("n", "<ESC>", "<cmd>nohl<CR>")
