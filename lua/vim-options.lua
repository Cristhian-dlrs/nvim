vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set relativenumber")
vim.cmd("set cursorline")
vim.g.mapleader = " "
vim.g.background = "light"

vim.wo.number = true
vim.opt.swapfile = false

-- General
vim.api.nvim_set_keymap("n", "U", ":redo<cr>", { noremap = true, silent = true }) -- map redo to shift U ofr convinience

-- Clear search results
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Save files
vim.api.nvim_set_keymap("n", "<C-s>", "<Cmd>w<CR>", { noremap = true, silent = true })    -- save buffer
vim.api.nvim_set_keymap("i", "<C-s>", "<Esc>:ws<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-S-s>", "<Cmd>wa<CR>", { noremap = true, silent = true }) -- save all buffers
vim.api.nvim_set_keymap("i", "<C-S-s>", "<Esc>:wa<CR>", { noremap = true, silent = true })

-- Window split
vim.api.nvim_set_keymap("n", "<leader>ws", "<Cmd>vsplit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", ":q<CR>")

-- Easy indent in normal mode
vim.api.nvim_set_keymap("n", ">", ">>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<", "<<", { noremap = true, silent = true })

-- Macros shortcuts
vim.keymap.set("n", "Q", "@qj")
vim.keymap.set("x", "Q", ":norm @q<CR>")
