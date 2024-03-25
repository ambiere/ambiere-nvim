require("telescope").setup({
  defaults = {
    border = false,
    layout_strategy = "cursor",
    prompt_prefix = " > ",
    layout_config = {
      cursor = {
        height = 0.4,
        --preview_cutoff = 24,
        preview_width = 0,
        width = 0.5,
      },
    },
  },
})
