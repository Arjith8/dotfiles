return {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    event = "BufReadPost",
    opts = {
        panel = {
            enable = true,
            auto_refresh = true,
        },
        suggestion = {
            enable = true,
            auto_trigger = true,
            hide_during_completions = false,
            keymap = {
                accept_line = "<Tab>",
                accept_word = "<C-w>"
            }
        }
    },
    keys = {
        { "<Tab>", "<cmd>Copilot suggestion accept_line", mode = 'i', desc = "Accept Line Suggested by Copilot" },
        { "<C-w>", "<cmd>Copilot suggestion accept_word", mode = 'i', desc = "Accept Word Suggested by Copilot" },
    }
}
