return {
  'stevearc/conform.nvim',
  lazy = true,
  opts = {},
  config = function ()
      local conform = require('conform')
      conform.setup({
          formatters_by_ft = {
              python = { 'black' }
          }
      })
  end
}
