return {
	"stevearc/conform.nvim",
	dependencies = { "mason.nvim" },
	opts = {
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
		formatters_by_ft = {
			lua = { "stylua" },
		},
	},
}
