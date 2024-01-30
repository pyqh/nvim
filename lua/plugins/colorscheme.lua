return {
  {
    "Mofiqul/vscode.nvim",
    priority = 1000,
    config = function()
      vim.cmd.colorscheme("vscode")
      vim.o.background = "dark"
    end,
  },
}
