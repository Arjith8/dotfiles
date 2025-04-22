return {
    'MeanderingProgrammer/render-markdown.nvim',
    lazy = true,
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' }, -- if you prefer nvim-web-devicons
    ---@module 'render-markdown'
    ---@type render.md.UserConfig
    opts = {},
    keys = {
        { "<leader>rm", "<cmd>RenderMarkdown<cr>", desc = "Render Markdown" },
        { "<leader>rmt", "<cmd>RenderMarkdown toggle<cr>", desc = "Render Markdown Toggle" },
        { "<leader>rmd", "<cmd>RenderMarkdown debug<cr>", desc = "Render Markdown Debug" },
    }
}
