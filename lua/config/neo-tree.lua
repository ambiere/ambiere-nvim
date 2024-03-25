require("neo-tree").setup({
  hide_root_node = true,
  enable_cursor_hijack = true,
  use_popups_for_input = false,
  default_component_configs = {
    icon = {
      folder_closed = "",
      folder_open = "",
      folder_empty = "󰉖",
      folder_empty_open = "󰉖",
      default = "*",
      highlight = "NeoTreeFileIcon",
    },
    modified = {
      symbol = "[+] ",
      highlight = "NeoTreeModified",
    },
  },
  renderers = {
    file = {
      { "indent" },
      {
        "container",
        content = {
          {
            "name",
            zindex = 10,
          },
          {
            "symlink_target",
            zindex = 10,
            highlight = "NeoTreeSymbolicLinkTarget",
          },
          { "clipboard", zindex = 10 },
          { "bufnr", zindex = 10 },
          { "modified", zindex = 20, align = "right" },
          { "diagnostics", zindex = 20, align = "right" },
          { "git_status", zindex = 10, align = "right" },
          { "file_size", zindex = 10, align = "right" },
          { "type", zindex = 10, align = "right" },
          { "last_modified", zindex = 10, align = "right" },
          { "created", zindex = 10, align = "right" },
        },
      },
    },
  },
})
