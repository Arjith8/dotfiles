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
                accept = false,
            }
        },
        vim.keymap.set("i", '<Tab>', function()
            if require("copilot.suggestion").is_visible() then
                require("copilot.suggestion").accept()
            else
                vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Tab>", true, false, true), "n", false)
            end
        end, {
           silent = true,
       })

    },
    keys = {
        { "<C-w>", "<cmd>Copilot suggestion accept_word <cr>", mode = 'i', desc = "Accept Word Suggested by Copilot" },
    },
}

