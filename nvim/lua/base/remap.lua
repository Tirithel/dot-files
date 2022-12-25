vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- moves visual block up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- collapses next line, keeps cursor in the same place
vim.keymap.set("n", "J", "mzJ`z")
-- keep cursor in the middle with half page jumps
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
-- keep cursor in the middle with search terms
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- "Q" is the worst, kill it with fire
vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- buffers!
vim.keymap.set("n", "<leader>bn", "<cmd>bnext<CR>")
vim.keymap.set("n", "<leader>bd", "<cmd>bnext<bar>bd #<CR>")
vim.keymap.set("n", "<leader>bs", "<cmd>Alpha<CR>")
