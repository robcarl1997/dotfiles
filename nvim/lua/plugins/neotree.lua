return {
	"nvim-neo-tree/neo-tree.nvim",
	branch = "v3.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
		"MunifTanjim/nui.nvim",
		-- {"3rd/image.nvim", opts = {}}, -- Optional image support in preview window: See `# Preview Mode` for more information
	},

	config = function()
		vim.keymap.set("n", "<C-e>", ":Neotree filesystem reveal left<CR>", { noremap = true, silent = true })
		vim.api.nvim_create_autocmd("FileType", {
			pattern = "neo-tree",
			callback = function()
				vim.api.nvim_buf_set_keymap(0, "n", "<C-e>", ":Neotree close<CR>",
					{ noremap = true, silent = true })
			end,
		})
	end,
}
