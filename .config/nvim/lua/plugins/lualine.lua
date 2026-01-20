return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = function(_, opts)
    opts.sections = opts.sections or {}
    opts.sections.lualine_c = opts.sections.lualine_c or {}
    opts.sections.lualine_y = opts.sections.lualine_y or {}
  end,
}
