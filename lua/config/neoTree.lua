local neoTree = require("neo-tree")

neoTree.setup({
  hide_root_node = true,
  enable_cursor_hijack = true,
  enable_refresh_on_write = true,
  use_popups_for_input = false,
  default_component_configs = {
    icon = {
      folder_closed = "/",
      folder_open = "/",
      folder_empty = "/",
      folder_empty_open = "/",
      default = "*",
      highlight = "NeoTreeFileIcon",
    },
    modified = {
      symbol = "[+] ",
      highlight = "NeoTreeModified",
    },
    git_status = {
      symbols = {
        added = "+",
        modified = "•",
        deleted = "x",
        renamed = "→",
        -- Status type
        untracked = "?",
        ignored = "/",
        unstaged = "",
        staged = "",
        conflict = "",
      },
    },
    diagnostics = {
      symbols = {
        hint = "H",
        info = "I",
        warn = "!",
        error = "X",
      },
    },
    indent = {
      with_expanders = false,
    },
  },

  renderers = {
    directory = {
      {
        "indent",
        with_markers = true,
        indent_marker = "│",
        last_indent_marker = "└",
        indent_size = 2,
      },
      { "current_filter" },
      {
        "container",
        content = {
          { "name", zindex = 10, highlight = "String" },
          {
            "symlink_target",
            zindex = 10,
            highlight = "NeoTreeSymbolicLinkTarget",
          },
          { "clipboard", zindex = 10 },
          { "diagnostics", errors_only = true, zindex = 20, align = "right", hide_when_expanded = true },
          { "git_status", zindex = 10, align = "right", hide_when_expanded = true },
          { "file_size", zindex = 10, align = "right" },
          { "type", zindex = 10, align = "right" },
          { "last_modified", zindex = 10, align = "right" },
          { "created", zindex = 10, align = "right" },
        },
      },
    },

    file = {
      {
        "indent",
        with_markers = true,
        indent_marker = "│",
        last_indent_marker = "└",
        indent_size = 2,
      },
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

  filesystem = {
    filtered_items = {
      visible = false,
      hide_dotfiles = true,
      hide_gitignored = true,
      hide_hidden = true,
      hide_by_name = {
        ".DS_Store",
        "thumbs.db",
        "node_modules",
      },
    },
  },

  nesting_rules = {
    ["package.json"] = {
      pattern = "^package%.json$",
      files = { "package-lock.json", "yarn*", "pnpm*" },
    },
  },
})
