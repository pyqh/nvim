return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        sh = { "shfmt" },
        lua = { "stylua" },
        html = { "prettier" },
        css = { "prettier" },
        javascript = { "prettierd" },
        json = { "prettier" },
        yaml = { "prettier" },
        python = { "isort", "black" },
        markdown = { "prettierd", "markdownlint" },
      },
      format_on_save = { timeout_ms = 500, lsp_fallback = true },
    },
    config = function(_, opts)
      require("conform").setup(opts)
    end,
  },
}
