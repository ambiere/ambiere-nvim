return {
  { "rose-pine/neovim", name = "rose-pine" },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "rose-pine",
    },
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
}
