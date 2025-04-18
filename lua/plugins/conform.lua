return {
	{
		"stevearc/conform.nvim",
		opts = {},
		config = function()
			require("conform").setup({
				formatters_by_ft = {
					lua = { "stylua" },
					python = { "black" },
					json = { "prettier" },
				},
				format_on_save = {
					timeout_ms = 300,
					lsp_format = "fallback",
				},
				formatters = {
					isort = {
						command = "isort",
						args = {
							"-",
						},
					},
				},
			})
		end,
	},
}
