local augroup = vim.api.nvim_create_augroup
local autocmd = vim.api.nvim_create_autocmd

local ambiereGroup = augroup("Ambiere", {})
local yankGroup = augroup("HighlightYank", {})

autocmd("BufWritePre", {
  group = ambiereGroup,
  pattern = "*",
  command = [[%s/\s\+$//e]],
})

autocmd("BufWritePre", {
  group = ambiereGroup,
  pattern = "*.{js,jsx}",
  command = [[%s/;$//e]],
})

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
