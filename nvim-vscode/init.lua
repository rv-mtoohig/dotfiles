vim.g.mapleader = " "

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

--
-- Autocommands
--

-- skip folds (down & up)
vim.cmd("nmap j gj")
vim.cmd("nmap k gk")

--
-- Options
--

-- sync system clipboard
vim.opt.clipboard = "unnamedplus"

-- search ignoring case
vim.opt.ignorecase = true

-- disable "ignorecase" option if search pattern contains upper case characters
vim.opt.smartcase = true

--
-- Keymaps
--

-- local whichkey = {
--   show = function()
--     vim.fn.VSCodeNotify("whichkey.show")
--   end
-- }

-- vim.keymap.set({"n", "v"}, "<leader>", whichkey.show)

local editor = {
  closeActive = function()
    vim.fn.VSCodeNotify("workbench.action.closeActiveEditor")
  end,
  closeOther = function()
    vim.fn.VSCodeNotify("workbench.action.closeOtherEditors")
  end,
  pinActive = function()
    vim.fn.VSCodeNotify("workbench.action.pinEditor")
  end,
  unpinActive = function()
    vim.fn.VSCodeNotify("workbench.action.unpinEditor")
  end,

  moveUp = function()
    vim.fn.VSCodeNotify("workbench.action.moveEditorToAboveGroup")
  end,
  moveDown = function()
    vim.fn.VSCodeNotify("workbench.action.moveEditorToBelowGroup")
  end,
  moveLeft = function()
    vim.fn.VSCodeNotify("workbench.action.moveEditorToLeftGroup")
  end,
  moveRight = function()
    vim.fn.VSCodeNotify("workbench.action.moveEditorToRightGroup")
  end,

  splitUp = function()
    vim.fn.VSCodeNotify("workbench.action.splitEditorToAboveGroup")
  end,
  splitDown = function()
    vim.fn.VSCodeNotify("workbench.action.splitEditorToBelowGroup")
  end,
  splitLeft = function()
    vim.fn.VSCodeNotify("workbench.action.splitEditorToLeftGroup")
  end,
  splitRight = function()
    vim.fn.VSCodeNotify("workbench.action.splitEditorToRightGroup")
  end,

  organizeImport = function()
    vim.fn.VSCodeNotify("editor.action.organizeImports")
  end
}

vim.keymap.set({"n", "v"}, "<leader>ed", editor.closeActive)
-- vim.keymap.set({"n", "v"}, "<leader>eD", editor.closeOther)
vim.keymap.set({"n", "v"}, "<leader>ep", editor.pinActive)
vim.keymap.set({"n", "v"}, "<leader>eP", editor.unpinActive)

vim.keymap.set({ "n", "v" }, "<leader>ek", editor.moveUp)
vim.keymap.set({ "n", "v" }, "<leader>ej", editor.moveDown)

vim.keymap.set({ "n", "v" }, "<leader>eh", editor.moveLeft)
vim.keymap.set({ "n", "v" }, "<leader>el", editor.moveRight)

vim.keymap.set({"n"}, "<leader>co", editor.organizeImport)

local toggle = {
  toggleActivityBar = function()
    vim.fn.VSCodeNotify("workbench.action.toggleActivityBarVisibility")
  end,
  toggleSideBar = function()
    vim.fn.VSCodeNotify("workbench.action.toggleSidebarVisibility")
  end,
  toggleZenMode = function()
    vim.fn.VSCodeNotify("workbench.action.toggleZenMode")
  end,
  theme = function()
    vim.fn.VSCodeNotify("workbench.action.selectTheme")
  end
}

vim.keymap.set({"n", "v"}, "<leader>tt", toggle.theme)
vim.keymap.set({"n", "v"}, "<leader>tz", toggle.toggleZenMode)
vim.keymap.set({"n", "v"}, "<leader>ta", toggle.toggleSideBar)
vim.keymap.set({"n", "v"}, "<leader>tA", toggle.toggleActivityBar)

local sidebar = {
  viewExplorer = function()
    vim.fn.VSCodeNotify("workbench.view.explorer")
  end,
  viewExtensions = function()
    vim.fn.VSCodeNotify("workbench.view.extensions")
  end,
}

vim.keymap.set({"n"}, "<leader>e", sidebar.viewExplorer)
vim.keymap.set({"n"}, "<leader>E", sidebar.viewExtensions)

local search = {
  reference = function()
    vim.fn.VSCodeNotify("editor.action.referenceSearch.trigger")
  end,
  referenceInSideBar = function()
    vim.fn.VSCodeNotify("references-view.find")
  end,
  project = function()
    vim.fn.VSCodeNotify("editor.action.addSelectionToNextFindMatch")
    vim.fn.VSCodeNotify("workbench.action.findInFiles")
  end,
  text = function()
    vim.fn.VSCodeNotify("workbench.action.findInFiles")
  end,
}

vim.keymap.set({"n"}, "<leader>/", search.text)
vim.keymap.set({"n"}, "<leader>ff", search.project)
vim.keymap.set({"n"}, "<leader>ft", sidebar.viewExplorer)
vim.keymap.set({"n"}, "<leader>sr", search.reference)
vim.keymap.set({"n"}, "<leader>sR", search.referenceInSideBar)

local symbol = {
  rename = function()
    vim.fn.VSCodeNotify("editor.action.rename")
  end,
}

local refactor = {
  showMenu = function()
    vim.fn.VSCodeNotify("editor.action.refactor")
  end,
}

vim.keymap.set({ 'n' }, "<leader>rn", symbol.rename)
vim.keymap.set({ 'v' }, "<leader>rr", refactor.showMenu)


local fold = {
  toggle = function()
    vim.fn.VSCodeNotify("editor.toggleFold")
  end,

  all = function()
    vim.fn.VSCodeNotify("editor.foldAll")
  end,
  openAll = function()
    vim.fn.VSCodeNotify("editor.unfoldAll")
  end,

  close = function()
    vim.fn.VSCodeNotify("editor.fold")
  end,
  closeRecursive = function()
    vim.fn.VSCodeNotify("editor.foldRecursively")
  end,
  open = function()
    vim.fn.VSCodeNotify("editor.unfold")
  end,
  openRecursive = function()
    vim.fn.VSCodeNotify("editor.unfoldRecursively")
  end,

  blockComment = function()
    vim.fn.VSCodeNotify("editor.foldAllBlockComments")
  end,

  allMarkerRegion = function()
    vim.fn.VSCodeNotify("editor.foldAllMarkerRegions")
  end,
  openAllMarkerRegion = function()
    vim.fn.VSCodeNotify("editor.unfoldAllMarkerRegions")
  end,
}

vim.keymap.set({ 'n' }, "zO", fold.openAll)
vim.keymap.set({ 'n' }, "zo", fold.open)
vim.keymap.set({ 'n' }, "zr", fold.openRecursive)
vim.keymap.set({ 'n' }, "zA", fold.all)
vim.keymap.set({ 'n' }, "zb", fold.blockComment)
vim.keymap.set({ 'n' }, "zC", fold.closeRecursive)
vim.keymap.set({ 'n' }, "zc", fold.close)
vim.keymap.set({ 'n' }, "zg", fold.allMarkerRegion)
vim.keymap.set({ 'n' }, "zG", fold.openAllMarkerRegion)
vim.keymap.set({ 'n' }, "zm", fold.toggle)

local error = {
  list = function()
    vim.fn.VSCodeNotify("workbench.actions.view.problems")
  end,
  closeList = function()
    vim.fn.VSCodeNotify("workbench.action.togglePanel")
  end,
  next = function()
    vim.fn.VSCodeNotify("editor.action.marker.next")
  end,
  previous = function()
    vim.fn.VSCodeNotify("editor.action.marker.prev")
  end,
}

vim.keymap.set({ 'n' }, "<leader>xx", error.list)
vim.keymap.set({ 'n' }, "<leader>xc", error.closeList)
vim.keymap.set({ 'n' }, "<leader>xn", error.next)
vim.keymap.set({ 'n' }, "<leader>xp", error.previous)

local panel = {
  toggle = function()
    vim.fn.VSCodeNotify("workbench.action.togglePanel")
  end,
  focusTerminal = function()
    vim.fn.VSCodeNotify("workbench.action.terminal.focus")
  end,
  focusProblems = function()
    vim.fn.VSCodeNotify("workbench.action.problems.focus")
  end,
}

-- vim.keymap.set({ "n" }, "<leader>pp", panel.toggle)
vim.keymap.set({ "n" }, "<leader>pt", panel.focusTerminal)
-- vim.keymap.set({ "n" }, "<leader>px", panel.focusProblems)
