-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymapc.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<leader>pv", vim.cmd.Ex, { desc = "Preview" })
map({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to clipboard +\\n" })
map("n", "<leader>Y", [["+Y]], { desc = "Yank to clipboard" })
map("x", "<leader>p", [["_dP]], { desc = "Paste yanked text over and over again" })
map({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without register" })

map("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })
map("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })

map("n", "<A-b>", "i<CR><Esc>", { desc = "Break the current line at cursor position" })
map("n", "J", "mzJ`z", { desc = "Joins the current line with the line below it" })
map("n", "<C-d>", "<C-d>zz", { desc = "Scroll down by half page" })
map("n", "<C-u>", "<C-u>zz", { desc = "Scroll up by half page" })
map("n", "n", "nzzzv", { desc = "Next occurrence of the search pattern" })
map("n", "N", "Nzzzv", { desc = "Previous occurrence of the search pattern" })

map("i", "<C-c>", "<Esc>")
map("i", "<C-s>", function()
  vim.cmd("w")
end, { desc = "Write file" })

map("n", "Q", "<nop>")
map("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
map("n", "<leader>f", vim.lsp.buf.format)

map("n", "<C-k>", "<cmd>cnext<CR>zz")
map("n", "<C-j>", "<cmd>cprev<CR>zz")
map("n", "<leader>k", "<cmd>lnext<CR>zz", { desc = "Next quick fix" })
map("n", "<leader>j", "<cmd>lprev<CR>zz", { desc = "Previous quick fix" })

map("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
map("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

map("n", "<leader>ee", "oif (err) {<CR>}<Esc>Oreturn err<Esc>", { desc = "Insert err block" })
map("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>", { desc = "Automaton" })

map("n", "<leader><leader>", function()
  vim.cmd("so")
end, { desc = "Source file" })
map("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle undotree" })

map("n", "<leader>cp", ":Colortils picker<CR>", { desc = "Open color picker" })
map("n", "<leader>cpl", ":Colortils lighten<CR>", { desc = "Open color picker lighten" })
map("n", "<leader>cpd", ":Colortils darken<CR>", { desc = "Open color picker darken" })
map("n", "<leader>cpg", ":Colortils greyscale<CR>", { desc = "Open color picker greyscale" })
map("n", "<leader>cpc", ":Colortils css list<CR>", { desc = "Open color picker css list" })

local opts = { noremap = true, silent = true }

map("n", "<C-c>", "<cmd>PickColor<cr>", opts)
map("i", "<C-c>", "<cmd>PickColorInsert<cr>", opts)
