vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set relativenumber")
vim.cmd("set cursorline")
-- vim.api.nvim_set_keymap("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.g.mapleader = " "
vim.g.background = "light"

vim.wo.number = true
vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Window split
vim.api.nvim_set_keymap("n", "<leader>ws", "<Cmd>vsplit<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

-- Easy indent in normal mode
vim.api.nvim_set_keymap("n", ">", ">>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<", "<<", { noremap = true, silent = true })
