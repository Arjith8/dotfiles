return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = function(_, opts)
    opts.sections = opts.sections or {}
    opts.sections.lualine_c = opts.sections.lualine_c or {}
    opts.sections.lualine_y = opts.sections.lualine_y or {}

    -- Copilot status
    table.insert(opts.sections.lualine_c, {
      function()
        return " "
      end,
      color = function()
        local status = require("sidekick.status").get()
        if status then
          return status.kind == "Error" and "DiagnosticError" or status.busy and "DiagnosticWarn" or "Special"
        end
      end,
      cond = function()
        local status = require("sidekick.status")
        return status.get() ~= nil
      end,
    })

    table.insert(opts.sections.lualine_y, {
      function()
        return " "
      end,
      cond = function()
        local status = require("supermaven-nvim.api").is_running()
        return status == true
      end,
    })
  end,
}
