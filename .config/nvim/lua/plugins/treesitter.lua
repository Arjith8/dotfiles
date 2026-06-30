return {
    "nvim-treesitter/nvim-treesitter",
    branch = 'main',
    build = ":TSUpdate",
    lazy = false,
    opts = {
        ensure_installed = {
            "tmux", "bash", "dart", "dockerfile", "javascript", "kotlin", "json", "lua", "prisma", "typescript", "python"
        },
        highlight = {
            enable = true,
        },
        indent = {
            enable = true
        }
    },
}
