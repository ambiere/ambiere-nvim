local set = vim.keymap.set

-- clipboard
set("n", "<leader>Y", [["+Y]], { desc = "Yank to clipboard" })
set({ "n", "v" }, "<leader>y", [["+y]], { desc = "Yank to clipboard +\\n" })
set("x", "<leader>p", [["_dP]], { desc = "Paste yanked text over and over again" })
set({ "n", "v" }, "<leader>d", [["_d]], { desc = "Delete without register" })

-- move line(s)
set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move lines up" })
set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move lines down" })

-- break and join line(s)
set("n", "J", "mzJ`z", { desc = "Joins the current line with the line below it" })
set("n", "<A-b>", "i<CR><Esc>", { desc = "Break the current line at cursor position" })

-- page scroll
set("n", "<C-d>", "<C-d>zz", { desc = "Scroll down by half page" })
set("n", "<C-u>", "<C-u>zz", { desc = "Scroll up by half page" })

-- seacrh pattern
set("n", "n", "nzzzv", { desc = "Next occurrence of the search pattern" })
set("n", "N", "Nzzzv", { desc = "Previous occurrence of the search pattern" })

set("n", "Q", "<nop>") -- do nothing when q is pressed

set("n", "<leader>f", vim.lsp.buf.format) -- format buffer using lsp
set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<cr>") -- run tmux-sessionizer script
set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<cr>", { desc = "Cellular Automaton" })
set("n", "<leader>G", "<cmd>silent !lazy-dawg<cr>", { desc = "lazygit cwd" }) -- run lazygit script
set("n", "<leader>x+", "<cmd>!chmod +x %<cr>", { silent = true, desc = "Make file executable" }) -- make file executable
set("n", "<leader><leader>", "<cmd>so<cr>", { desc = "Source file" }) -- source current file

-- UndotreeToggle
set("n", "<leader>u", vim.cmd.UndotreeToggle, { desc = "Toggle undotree" })

-- color picker keymaps
set("n", "<C-c>", "<cmd>PickColor<cr>", { noremap = true, silent = true })
set("i", "<C-c>", "<cmd>PickColorInsert<cr>", { noremap = true, silent = true })
