return {

	"williamboman/mason-lspconfig.nvim",
	dependencies = {
		{ "williamboman/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
	},
	config = function()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"gopls",
				"ts_ls",
				"tailwindcss",
				"cssls",
				"html",
				"pyright",
				"lua_ls",
			},
		})

		-- Formatting
		vim.keymap.set("n", "<leader>f", function()
			vim.lsp.buf.format()
			vim.lsp.buf.code_action({
				context = { only = { "source.organizeImports" } },
				apply = true,
			})
		end, { desc = "Format file" })

		-- Code actions
		vim.keymap.set("n", "<leader>ca", function()
			vim.lsp.buf.code_action()
		end, { desc = "View Code Actions" })
	end,
}
