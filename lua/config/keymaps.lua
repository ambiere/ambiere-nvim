-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymapc.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- copy into clipboard
map("n", "<leader>y", '"+y', { desc = "[N] yank to clipboard" })
map("v", "<leader>y", '"+y', { desc = "[V] yank to clipboard" })
map("n", "<leader>Y", '"+Y', { desc = "[V] yank to clipboard" })
map("n", "<leader>Y", '"+Y', { desc = "[V] yank to clipboard" })

-- delete to void register
map("n", "<leader>d", '"_d', { desc = "[N] delete to void register" })

-- quick fix navigation
map("n", "<C-k>", "<cmd>cnext<CR>zz", { desc = "<C-k> Next: quick fix list" })
map("n", "<C-j>", "<cmd>cprev<CR>zz", { desc = "<C-j> Prev: quick fix list" })
map("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "<leader>l Next: quick fix list" })
map("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "<leader>l Prev: quick fix list" })

-- switch projects (not working)
map("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>", { desc = "Switch projects using tmux" })

-- move highlighted lines up or down
map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move highlighted line(s) up" })
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move highlighted line(s) down" })

-- append line below it at the end of the current
-- line with space, maintaining cursor position
map("n", "J", "mzJ`z", { desc = "Append line below it at the end of the current line" })

-- half page jumping while keeping the cursor at the middle
map("n", "<C-d>", "<C-d>zz", { desc = "Half page jumping down" })
map("n", "<C-u>", "<C-u>zz", { desc = "Half page jumping up" })

-- allow seacrh term to stay in the middle
map("n", "n", "nzzzv", { desc = "Allow search term to stay in the middle when going up" })
map("n", "N", "Nzzzv", { desc = "Allow search term to stay in the middle when going down" })

-- keep the yanked word to paste over and over
map("x", "<leader>P", '"_dP', { desc = "keep yanked word" })

map("n", "<leader><F5>", vim.cmd.UndotreeToggle, { desc = "Toggle undo tree" })
map("n", "<leader>b]", "<cmd>bnext<CR>", { desc = "Go to next buffer" })
map("n", "<leader>b[", "<cmd>bprevious<CR>", { desc = "Go to previous buffer" })
