vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_python3_provider = 0

local opt = vim.opt

opt.number = true

opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

opt.cursorline = true

opt.mouse:append("a")

opt.clipboard:append("unnamedplus")

opt.ignorecase = true
opt.smartcase = true

-- opt.termguicolors = true
opt.signcolumn = "yes"

opt.swapfile = false
opt.backup = false
