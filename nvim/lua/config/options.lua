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

vim.opt.title = true
vim.opt.hlsearch = true
vim.opt.wrap = false -- No wrap lines
vim.opt.wildignore:append({ "*/node_modules/*" })
vim.opt.splitbelow = true -- Put new windows below current
vim.opt.splitright = true -- Put new windows right of current

vim.opt.scrolloff = 2 -- minimum number of lines to keep above and below the cursor
vim.opt.sidescrolloff = 8 --minimum number of columns to keep above and below the cursor
vim.opt.signcolumn = "yes" -- always show the sign column, to avoid text shifting when signs are displayed
vim.opt.isfname:append("@-@") -- include '@' in the set of characters considered part of a file name

-- Prettier
vim.g.lazyvim_prettier_needs_config = true
