return {
	{
		"stevearc/conform.nvim",
		opts = {},
		config = function()
			require("conform").setup({
				log_level = vim.log.levels.DEBUG,
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "isort", "black" },
					json = { "prettier" },
				},
				format_on_save = {
					timeout_ms = 1800,
					lsp_fallback = true,
					async = false,
				},
				formatters = {
					stylua = {
						prepend_args = { "--column-width", "120" },
					},
				},
			})
		end,
	},
}
