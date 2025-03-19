return {
	"akinsho/toggleterm.nvim",
	version = "*",
	-- config = true,
	config = function()
		require("toggleterm").setup{}
		vim.api.nvim_set_keymap("n", "<C-o>", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })
	end
}
