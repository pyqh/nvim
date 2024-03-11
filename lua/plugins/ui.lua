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
            path = 1,
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
}
