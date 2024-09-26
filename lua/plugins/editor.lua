return {
  {
    "rmagatti/auto-session",
    config = function()
      require("auto-session").setup()
    end,
  },
  {
    "numToStr/Comment.nvim",
    opts = {
      toggler = { line = "<S-z>" },
      opleader = { line = "<S-z>" },
    },
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "+" },
        change = { text = "~" },
        delete = { text = "_" },
        topdelete = { text = "‾" },
        changedelete = { text = "~" },
      },
    },
  },
  { "windwp/nvim-autopairs", event = "InsertEnter", config = true },
  {
    "nvim-telescope/telescope.nvim",
    version = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      require("telescope").setup({
        defaults = {
          layout_config = { prompt_position = "top" },
          sorting_strategy = "ascending",
          mappings = {
            i = {
              ["<Esc>"] = require("telescope.actions").close,
            },
          },
        },
      })
    end,
    keys = {
      { "<leader>p", "<cmd>Telescope find_files<cr>" },
      { "rg", "<cmd>Telescope live_grep<cr>" },
    },
  },
}
