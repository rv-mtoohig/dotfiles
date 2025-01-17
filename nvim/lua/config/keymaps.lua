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
--- Resize window
keymap("n", "<leader><left>", ":vertical resize +20<cr>", { desc = "Virtual resize window +20" })
keymap("n", "<leader><right>", ":vertical resize -20<cr>", { desc = "Virtual resize window -20" })
keymap("n", "<leader><up>", ":resize +10<cr>", { desc = "Resize window +10" })
keymap("n", "<leader><down>", ":resize -10<cr>", { desc = "Resize windown -10" })

-- Center the screen after scrolling up/down with Ctrl-u/d
keymap("n", "<C-u>", "<C-u>zz")
keymap("n", "<C-d>", "<C-d>zz")

-- Center the screen on the next/prev search result with n/N
keymap("n", "n", "nzzzv")
keymap("n", "N", "Nzzzv")

-- Increment/decrement
-- keymap("n", "+", "<C-a>")
-- keymap("n", "-", "<C-x>")

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

-- Move a blocks of text up/down with K/J in visual mode
keymap("v", "K", ":m '<-2<CR>gv=gv", opts)
keymap("v", "J", ":m '>+1<CR>gv=gv", opts)
-- Move line up or down
keymap("n", "<A-Down>", ":m .+1<CR>", opts)
keymap("n", "<A-Up>", ":m .-2<CR>", opts)
keymap("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", opts)
keymap("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", opts)
keymap("v", "<A-Down>", ":m '>+1<CR>gv=gv", opts)
keymap("v", "<A-Up>", ":m '<-2<CR>gv=gv", opts)

-- Show Lsp info
keymap("n", "<leader>cl", "<cmd>LspInfo<CR>", opts)

-- Select all
keymap("n", "<C-a>", "ggVG", { silent = true, desc = "Select all content" })

-- checkbox
-- keymap("n", "<leader>ty", [[:s/\[\s\]/[x]/<cr>]], opts)
-- keymap("n", "<leader>tu", [[:s/\[x\]/[ ]/<cr>]], opts)

-- Toggle checkbox values
function ToggleCheckbox()
  -- Get the current line
  local line = vim.api.nvim_get_current_line()

  -- Check if line contains unchecked checkbox
  if line:match("^%s*-%s*%[ %]") then
    -- Replace unchecked with checked
    local new_line = line:gsub("%[ %]", "[x]")
    vim.api.nvim_set_current_line(new_line)

    -- Check if line contains checked checkbox
  elseif line:match("^%s*-%s*%[x%]") then
    -- Replace checked with unchecked
    local new_line = line:gsub("%[x%]", "[ ]")
    vim.api.nvim_set_current_line(new_line)

    -- If no checkbox, do nothing
  else
    print("No checkbox found on this line")
  end
end

keymap("n", "<leader>ti", ToggleCheckbox, { noremap = true, silent = true, desc = "Checkbox Toggle" })
