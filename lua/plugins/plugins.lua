return {
  {
    "ambiere/dark-mono",
    name = "dark-mono",
    priority = 1000,
    config = function()
      vim.cmd([[colorscheme dark-mono]])
    end,
  },
  { "nvim-tree/nvim-web-devicons", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },
  { "stevearc/dressing.nvim", enabled = false },
  { "nvimdev/dashboard-nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = false },
  { "tpope/vim-fugitive" },
  { "mbbill/undotree" },
  {
    "rbong/vim-flog",
    lazy = true,
    cmd = { "Flog", "Flogsplit", "Floggit" },
    dependencies = {
      "tpope/vim-fugitive",
    },
  },
  {
    "kylechui/nvim-surround",
    version = "*",
    event = "VeryLazy",
    config = function() end,
  },
  { "eandrju/cellular-automaton.nvim", event = "VeryLazy" },
  {
    "ziontee113/color-picker.nvim",
    config = function()
      local opts = require("config.color-picker")
      require("color-picker").setup(opts)
      vim.cmd([[hi FloatBorder guibg=NONE]]) -- if you don't want weird border background colors around the popup.
    end,
  },
  {
    "BlackLight/nvim-http",
  },
  {
    "iamcco/markdown-preview.nvim",
    cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
    build = "cd app && yarn install",
    init = function()
      vim.g.mkdp_filetypes = { "markdown" }
    end,
    ft = { "markdown" },
  },
  {
    "ziglang/zig.vim",
  },
}
