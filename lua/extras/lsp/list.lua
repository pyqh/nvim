-- https://github.com/williamboman/mason-lspconfig.nvim#available-lsp-servers
return {
  lsp = {
    "clangd",
    "cssls",
    "dockerls",
    "emmet_ls",
    "eslint",
    "html",
    "jdtls",
    "jsonls",
    "lua_ls",
    "marksman",
    "pyright",
    "tailwindcss",
    "volar",
    "vtsls",
  },
  nolsp = {
    -- "clang-format", -- c,java,etc
    "google-java-format",
    "prettierd",
    "prettier",
    -- prettier for jsx, angular, flow, vue, typescript, css, less, scss, html, json, markdown, yaml
    "stylua", -- lua
    -- "black", -- *python
    -- "isort", -- python
    "markdownlint", -- markdown
    "efm",
    -- general language server
  },
}
