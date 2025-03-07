-- buffers
vim.keymap.set("n", "H", ":bp<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "L", ":bn<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", ":bd<CR>")

-- 
-- save
vim.keymap.set("n", "<leader>s", ":w<CR>")


-- split
vim.keymap.set("n", "<leader>v", ":vsplit<CR>")
vim.keymap.set("n", "<leader>h", ":split<CR>")
-- vim.keymap.set("n", "<C-l>", "<C-w>l")
-- vim.keymap.set("n", "<C-h>", "<C-w>h")
-- vim.keymap.set("n", "<C-k>", "<C-w>k")
-- vim.keymap.set("n", "<C-j>", "<C-w>j")

-- code
	-- python
vim.api.nvim_set_keymap("n", "<leader>r", ":rightbelow vsplit | terminal python3 %<CR>", { noremap = true, silent = true })
