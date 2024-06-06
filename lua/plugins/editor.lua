return {
  {
    "nvim-telescope/telescope.nvim",
    version = false,
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local builtin = require("telescope.builtin")
      local function project_files()
        local is_inside_work_tree = {}
        local cwd = vim.fn.getcwd()
        if is_inside_work_tree[cwd] == nil then
          vim.fn.system("git rev-parse --is-inside-work-tree")
          is_inside_work_tree[cwd] = vim.v.shell_error == 0
        end
        if is_inside_work_tree[cwd] then
          builtin.git_files()
        else
          builtin.find_files()
        end
      end
      vim.keymap.set("n", "rg", builtin.live_grep)
      vim.keymap.set("n", "<leader>p", project_files)
      require("telescope").setup({
        defaults = {
          prompt_prefix = "   ",
          layout_config = { prompt_position = "top" },
          sorting_strategy = "ascending",
          mappings = {
            i = {
              ["<Esc>"] = require("telescope.actions").close,
              ["<C-j>"] = require("telescope.actions").move_selection_next,
              ["<C-k>"] = require("telescope.actions").move_selection_previous,
              ["<C-f>"] = require("telescope.actions").preview_scrolling_down,
              ["<C-b>"] = require("telescope.actions").preview_scrolling_up,
            },
          },
        },
      })
    end,
  },
  {
    "RRethy/vim-illuminate",
    config = function()
      vim.keymap.set("n", "<C-d>", require("illuminate").goto_next_reference)
      require("illuminate").configure()
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = "▎" },
        change = { text = "▎" },
        delete = { text = "" },
        topdelete = { text = "" },
        changedelete = { text = "▎" },
        untracked = { text = "▎" },
      },
    },
  },
}
