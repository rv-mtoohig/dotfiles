return {
    -- Moves lines of code up/down including highlighted blocks
    {
        "echasnovski/mini.move",
        event = "VeryLazy",
        opts = {
            mappings = {
                down = 'J',
                up = 'K',
                line_down = 'J',
                line_up = 'K',
            },
        },
    },
    -- Creates matched pairs for brackets and quotes
    {
        "echasnovski/mini.pairs",
        event = "VeryLazy",
    },
    -- Allows commands such a `v` or `d` for `a` (around) or `i` (inside) whatever selected treesitter node
    {
        "echasnovski/mini.ai",
        event = "VeryLazy",
    },
    -- Allows for overwriting default comment string types by language
    -- see: https://github.com/folke/ts-comments.nvim
    {
        "folke/ts-comments.nvim",
        event = "VeryLazy",
    },
}
