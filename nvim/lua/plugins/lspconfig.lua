return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {},
    -- @class PluginLspOpts
    opts = function()
      -- Add keymap for inc-rename plugin
      local keys = require("lazyvim.plugins.lsp.keymaps").get()
      keys[#keys + 1] = {
        "<leader>cr",
        function()
          local inc_rename = require("inc_rename")
          return ":" .. inc_rename.config.cmd_name .. " " .. vim.fn.expand("<cword>")
        end,
        expr = true,
        desc = "Rename (inc-rename.nvim)",
        has = "rename",
      }
    end,
    servers = {
      "graphql", -- required for graphql-lsp
    },
    -- Enable this to enable the builtin LSP inlay hints on Neovim >= 0.10.0
    -- Be aware that you also will need to properly configure your LSP server to
    -- provide the inlay hints.
    inlay_hints = {
      enabled = true,
    },
    -- Enable this to enable the builtin LSP code lenses on Neovim >= 0.10.0
    -- Be aware that you also will need to properly configure your LSP server to
    -- provide the code lenses.
    codelens = {
      enabled = false, -- Run `lua vim.lsp.codelens.refresh({ bufnr = 0 })` for refreshing code lens
    },
    format = {
      timeout_ms = 10000, -- 10 seconds
    },
    setup = {},
  },
}
