-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- local Util = require("lazyvim.util")
-- local Diagnostics = require("utils.diagnostics")
local keymap = vim.keymap.set
-- Silent keymap option
local opts = { silent = true }

-- local Lsp = require("utils.lsp")
-- local Cmd = require("utils.cmd")

-- New tab
keymap("n", "te", ":tabedit")
keymap("n", "<tab>", ":tabnext<Return>", opts)
keymap("n", "<s-tab>", ":tabprev<Return>", opts)
-- Split window
keymap("n", "ss", ":split<Return>", opts)
keymap("n", "sv", ":vsplit<Return>", opts)
-- Move window
keymap("n", "sh", "<C-w>h")
keymap("n", "sk", "<C-w>k")
keymap("n", "sj", "<C-w>j")
keymap("n", "sl", "<C-w>l")
-- Resize window
-- keymap("n", "<A-j>", "<C-w><")
-- keymap("n", "<A-k>", "<C-w>>")
-- keymap("n", "<A-h>", "<C-w>+")
-- keymap("n", "<A-l>", "<C-w>-")

-- Increment/decrement
keymap("n", "+", "<C-a>")
keymap("n", "-", "<C-x>")

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Easier access to beginning and end of lines
keymap("n", "<A-h>", "^", {
  desc = "Go to start of line",
  silent = true,
})
keymap("n", "<A-l>", "$", {
  desc = "Go to end of line",
  silent = true,
})

-- Move line up or down
keymap("n", "<A-Down>", ":m .+1<CR>", opts)
keymap("n", "<A-Up>", ":m .-2<CR>", opts)
keymap("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", opts)
keymap("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", opts)
keymap("v", "<A-Down>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-Up>", ":m '<-2<CR>gv=gv", opts)

-- Show Lsp info
keymap("n", "<leader>cl", "<cmd>LspInfo<CR>", opts)
