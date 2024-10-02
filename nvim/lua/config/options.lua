-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Set conceal level to 0
vim.o.conceallevel = 0

-- Lazygit
vim.g.lazygit_floating_window_winblend = 0 -- transparency of floating window
vim.g.lazygit_floating_window_scaling_factor = 0.9 -- scaling factor for floating window
vim.g.lazygit_floating_window_use_plenary = 1 -- use plenary.nvim to manage floating window if available
-- TODO: investigate neovim-remote to allow editing commit messages in the neovim instance instead of a nano editor
-- vim.g.lazygit_use_neovim_remote = 1
