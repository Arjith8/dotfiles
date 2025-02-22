return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep' , 'nvim-telescope/telescope-live-grep-args.nvim'},
    opt = {},
    keys = {
        { '<leader>ff', "<cmd>Telescope find_files hidden=true<cr>", desc = "Telescope Find Files" },
        { '<leader>gf', "<cmd>Telescope git_files hidden=true<cr>", desc = "Telescope Git Find Files" },
        { '<leader>ps', "<cmd>Telescope grep_string <cr>", desc = "Telescope Grep String" },
        { '<leader>fg', "<cmd>Telescope live_grep_args <cr>", desc = "Telescope Live Grep Args" },
    },
    config = function()
       local telescope = require('telescope')
       telescope.load_extension("live_grep_args")
   end
}

