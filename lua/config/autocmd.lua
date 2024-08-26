local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local ambiereGroup = augroup("Ambiere", {})
local yankGroup = augroup("HighlightYank", {})

-- remove whitespace at the end of
-- each line before the buffer is written
autocmd("BufWritePre", {
  group = ambiereGroup,
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

-- remove semicolon on js and jsx files
autocmd("BufWritePre", {
  group = ambiereGroup,
  pattern = "*.{js,jsx}",
  command = [[%s/;$//e]],
})

-- highlight yanked text for 40ms
autocmd("TextYankPost", {
  group = yankGroup,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({
      higroup = "IncSearch",
      timeout = 40,
    })
  end,
})
