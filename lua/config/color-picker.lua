-- vim.keymap.set("n", "your_keymap", "<cmd>ConvertHEXandRGB<cr>", opts)
-- vim.keymap.set("n", "your_keymap", "<cmd>ConvertHEXandHSL<cr>", opts)

return {
  -- for changing icons & mappings
  ["icons"] = { "∎", "∎" },
  -- ["icons"] = { "ﮊ", "" },
  -- ["icons"] = { "", "" },
  -- ["icons"] = { "", "" },
  -- ["icons"] = { "", "" },
  -- ["icons"] = { "ﱢ", "" },
  ["border"] = "none", -- none | single | double | rounded | solid | shadow
  ["keymap"] = { -- mapping example:
    ["U"] = "<Plug>ColorPickerSlider5Decrease",
    ["O"] = "<Plug>ColorPickerSlider5Increase",
  },
  ["background_highlight_group"] = "Normal", -- default
  ["border_highlight_group"] = "", -- default
  ["text_highlight_group"] = "Normal", --default
}
