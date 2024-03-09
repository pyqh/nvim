return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      theme = "vscode",
      options = {
        component_separators = "",
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_c = {
          {
            "filename",
            path = 1, -- 0: Just the filename
            -- 1: Relative path
            -- 2: Absolute path
            -- 3: Absolute path, with tilde as the home directory
            -- 4: Filename and parent dir, with tilde as the home directory
          },
        },
      },
    },
  },
  {
    "akinsho/bufferline.nvim",
    dependencies = "nvim-tree/nvim-web-devicons",
    opts = {
      options = {
        diagnostics = "nvim_lsp",
        themable = true,
        separator_style = "slant",
      },
    },
  },
  { "lukas-reineke/indent-blankline.nvim", main = "ibl", config = true },
  {
    "echasnovski/mini.indentscope",
    enabled = false,
    version = false,
    opts = {
      symbol = "▏",
      -- symbol = "│",
      options = { try_as_border = true },
    },
  },
}
