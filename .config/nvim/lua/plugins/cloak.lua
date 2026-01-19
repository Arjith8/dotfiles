return {
  "laytan/cloak.nvim",
  lazy = false,
  opts = {
    enabled = true,
    cloak_character = "*",
    highlight_group = "Comment",
    patterns = {
      {
        file_pattern = { ".env", "wrangler.toml", ".dev.vars" },
        cloak_pattern = "=.+",
      },
    },
  },
  keys = {
    { "<leader>ct", "<cmd>CloakToggle<cr>", desc = "Cloak Toggle" },
    { "<leader>cp", "<cmd>CloakPreviewLine<cr>", desc = "Cloak Preview Line" },
  },
}
