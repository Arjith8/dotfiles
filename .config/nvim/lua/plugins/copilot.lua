return {
  "zbirenbaum/copilot.lua",
  dependencies = {
    "copilotlsp-nvim/copilot-lsp",
  },
  cmd = "Copilot",
  event = "InsertEnter",
  build = ":Copilot auth",
  opts = {
    logger = {
      file_log_level = vim.log.levels.TRACE,
      log_to_file = true,
      trace_lsp = "verbose",
    },
    panel = {
      enabled = false,
      auto_refresh = true,
    },
    suggestion = {
      enabled = false,
      auto_trigger = false,
      hide_during_completions = false,
      keymap = {
        accept = false,
      },
    },
    nes = {
      enabled = true,
      keymap = {
        accept_and_goto = "<leader>p",
        accept = false,
        dismiss = "<Esc>",
      },
    },
  },
}
