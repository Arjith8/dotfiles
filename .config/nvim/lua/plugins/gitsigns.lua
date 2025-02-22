return {
    "lewis6991/gitsigns.nvim",
    lazy = true,
    event = "BufAdd",
    opts = {
        signs = {
            add = { text = "+" },
            change = { text = "~" },
        }
    }
}
