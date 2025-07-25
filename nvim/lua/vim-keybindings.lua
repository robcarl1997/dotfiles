-- buffers
vim.keymap.set("n", "H", ":bp<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "L", ":bn<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>q", ":bd<CR>")

-- 
-- save
vim.keymap.set("n", "<leader>s", ":w<CR>")

-- panes
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-h>", "<C-w>h")


-- indenting
vim.keymap.set("n", ">", ">>llll")
vim.keymap.set("n", "<", "<<hhhh")

vim.keymap.set("v", ">", ">gvllll")
vim.keymap.set("v", "<", "<gvhhhh")

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



-- Preview
vim.keymap.set("n", "<leader>V", ":MarkdownPreview<CR>")


-- Markdown
-- vim.keymap.set("n", "<CR>", ":/#<CR>zt")
-- vim.keymap.set("n", "<BS>", ":?#<CR>zt")
--


