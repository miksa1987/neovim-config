local Utils = require('utils')

-- local exprnnoremap = Utils.exprnnoremap
local nnoremap = Utils.nnoremap
local vnoremap = Utils.vnoremap
-- local xnoremap = Utils.xnoremap
local inoremap = Utils.inoremap
-- local tnoremap = Utils.tnoremap
-- local nmap = Utils.nmap
-- local xmap = Utils.xmap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Write and quit
nnoremap("<leader>w", ":w<CR>")
nnoremap("<leader>q", ":q<CR>")
nnoremap("<leader>Q", ":q!<CR>")
nnoremap("<leader>c", ":bd<CR>")

-- kj to normal mode
inoremap("kj", "<Esc>")

-- Run omnifunc, mostly used for autocomplete
inoremap("<C-SPACE>", "<C-x><C-o>")

-- Save with Ctrl + S
nnoremap("<C-s>", ":w<CR>")

-- Move around windows
nnoremap("<C-h>", "<C-w>h")
nnoremap("<C-j>", "<C-w>j")
nnoremap("<C-k>", "<C-w>k")
nnoremap("<C-l>", "<C-w>l")

-- Switch buffers (needs nvim-bufferline)
nnoremap("<TAB>", ":BufferLineCycleNext<CR>")
nnoremap("<S-TAB>", ":BufferLineCyclePrev<CR>")
nnoremap("<leader>bj", ":BufferLinePick<CR>")
nnoremap("<leader>bh", ":BufferLineCloseLeft<CR>")
nnoremap("<leader>bl", ":BufferLineCloseRight<CR>")
nnoremap("<leader>bb", ":BufferLineMovePrev<CR>")
nnoremap("<leader>bc", ":BufferLineMovePrev<CR>")

-- Splits
nnoremap("<leader>vs", ":split<CR>")
nnoremap("<leader>vv", ":vsplit<CR>")

-- Popualte substitution
nnoremap("<leader>ss", ":s//g<Left><Left>")
nnoremap("<leader>sa", ":%s//g<Left><Left>")
nnoremap("<leader>sc", ":%s//gc<Left><Left><Left>")

-- Copy to system clippboard
nnoremap("<leader>y", '"+y')
vnoremap("<leader>y", '"+y')

-- Paste from system clippboard
nnoremap("<leader>p", '"+p')
vnoremap("<leader>p", '"+p')

-- Quickfix list
nnoremap("<leader>co", ":copen<CR>")
nnoremap("<leader>cc", ":cclose<CR>")
nnoremap("<C-N>", ":cnext<CR>")
nnoremap("<C-P>", ":cprev<CR>")

-- Show line diagnostics
nnoremap("<leader>d", '<Cmd>lua vim.diagnostic.open_float(0, {scope = "line"})<CR>')

-- Open local diagnostics in local list
nnoremap("<leader>D", "<Cmd>lua vim.diagnostic.setloclist()<CR>")

-- Telescope
nnoremap("<leader>ff", "<Cmd>Telescope find_files<CR>")
nnoremap("<leader>fb", "<Cmd>Telescope buffers<CR>")
nnoremap("<leader>fg", "<Cmd>Telescope live_grep<CR>")

-- File explorer
nnoremap("<leader>e", "<Cmd>NvimTreeToggle<CR>")  -- NvimTree
-- nnoremap("<leader>e", "<Cmd>RnvimrToggle<CR>")


-- EasyAlign
-- xmap("ga", "<cmd>EasyAlign")
-- nmap("ga", "<cmd>EasyAlign")
