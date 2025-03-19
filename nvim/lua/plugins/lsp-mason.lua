return{
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
					ensure_installed = {"lua_ls", "bashls", "clangd", "pyright"}
				})
		end
	},
	{
		-- h vim.lsp.buf -> get lsp functions
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require('lspconfig')
			lspconfig.lua_ls.setup({})
			lspconfig.bashls.setup({})
			lspconfig.clangd.setup({})
			lspconfig.pyright.setup({})

			vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
			vim.keymap.set({'n'}, '<leader>ca', vim.lsp.buf.code_action, {})
		end
	}

}
