return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        sh = { "shfmt" },
        css = { "prettier" },
        html = { "prettier" },
        javascript = { "prettier" },
        json = { "prettier" },
        lua = { "stylua" },
        markdown = { "prettier", "markdownlint" },
        python = { "isort", "black" },
        yaml = { "prettier" },
      },
      format_on_save = { timeout_ms = 500, lsp_fallback = true },
    },
    config = function(_, opts)
      require("conform").setup(opts)
    end,
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      local lsp = { "bashls", "vtsls", "lua_ls", "pyright" }
      local nolsp =
        { "shfmt", "prettier", "stylua", "markdownlint", "isort", "black" }
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = lsp,
      })
      local mr = require("mason-registry")
      local function ensure_installed()
        for _, tool in ipairs(nolsp) do
          local p = mr.get_package(tool)
          if not p:is_installed() then
            p:install()
          end
        end
      end
      if mr.refresh then
        mr.refresh(ensure_installed)
      else
        ensure_installed()
      end

      -- local lsp_capabilities = require("cmp_nvim_lsp").default_capabilities()
      local default_config = {
        -- capabilities = lsp_capabilities,
        on_attach = function(client, bufnr)
          -- vim.lsp.inlay_hint.enable(true)
          local opts = { buffer = 0, noremap = true, silent = true }
          local function map(mode, lhs, rhs)
            vim.keymap.set(mode, lhs, rhs, opts)
          end
          map("n", "df", vim.lsp.buf.definition)
          map("n", "rf", vim.lsp.buf.references)
          map("n", "rn", vim.lsp.buf.rename)
        end,
      }

      require("lspconfig").bashls.setup(default_config)
      require("lspconfig").lua_ls.setup(default_config)
      require("lspconfig").pyright.setup(default_config)
      require("lspconfig").vtsls.setup(
        vim.tbl_deep_extend("force", default_config, {
          settings = {
            javascript = {
              inlayHints = {
                parameterTypes = { enabled = true },
              },
            },
          },
        })
      )
    end,
  },
}
