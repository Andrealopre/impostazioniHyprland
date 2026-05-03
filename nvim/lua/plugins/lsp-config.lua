return {
	{
		"mason-org/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup()
		end,
	},
	{
		"mason-org/mason-lspconfig.nvim",
		lazy = false,
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = { "lua_ls", "clangd", "gopls", "pylsp", "ts_ls", "html", "cssls" },
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()

			vim.lsp.config("*", {
				capabilities = capabilities,
			})

			vim.lsp.config("clangd", {
				cmd = {
					"clangd",
					"--query-driver=C:/msys64/ucrt64/bin/",
				},
			})

			vim.lsp.enable("lua_ls")
			vim.lsp.enable("clangd")
			vim.lsp.enable("gopls")
			vim.lsp.enable("pylsp")
			vim.lsp.enable("ts_ls")
			vim.lsp.enable("html")
            vim.lsp.enable("cssls")
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
