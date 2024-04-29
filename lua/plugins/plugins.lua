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
}
