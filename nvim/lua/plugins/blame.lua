return {
  {
    "FabijanZulj/blame.nvim",
    lazy = false,
    config = function()
      require("blame").setup({})
    end,
    keys = {
      {
        "<leader>gF",
        ":BlameToggle<CR>",
        desc = "Fugitive git blame",
      },
    },
  },
}
