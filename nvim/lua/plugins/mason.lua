return {
  -- cmdline tools and lsp servers
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        -- formatters
        "prettier",
        "prettierd",
        -- code spell
        "codespell",
        "misspell",
        "cspell",
        -- markdown
        "markdownlint",
        -- Solidity
        "solidity",
        -- GraphQL
        "graphql-language-service-cli", -- required for graphql-lsp
      },
    },
  },
}
