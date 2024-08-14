return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"ast_grep",
					"jsonls",
					"intelephense",
					"solidity",
					"grammarly",
					"vuels",
					"lemminx",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ capabilities = capabilities })
			lspconfig.ast_grep.setup({ capabilities = capabilities })
			lspconfig.jsonls.setup({ capabilities = capabilities })
			lspconfig.intelephense.setup({ capabilities = capabilities })
			lspconfig.solidity.setup({ capabilities = capabilities })
			lspconfig.grammarly.setup({ capabilities = capabilities })
			lspconfig.vuels.setup({ capabilities = capabilities })
			lspconfig.lemminx.setup({ capabilities = capabilities })
		end,
	},
}
