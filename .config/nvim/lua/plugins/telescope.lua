return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep' , 'nvim-telescope/telescope-live-grep-args.nvim'},
    opt = {},
    config = function()
       local telescope = require('telescope')

       local builtin = require("telescope.builtin")
       vim.keymap.set("n", "<leader>ff", function ()
           builtin.find_files({ hidden = true })
       end)
       vim.keymap.set("n", "<leader>gf", builtin.git_files, {})
       vim.keymap.set("n", "<leader>ps", builtin.grep_string)
       vim.keymap.set("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
       --vim.keymap.set("n", "<leader>lg", builtin.live_grep, {})
       --vim.keymap.set("n", "<leader>qf", builtin.quick_fix, {})
       telescope.load_extension("live_grep_args")
   end
}

