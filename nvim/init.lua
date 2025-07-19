vim.g.mapleader = " "
vim.o.tabstop = 4 -- A TAB character looks like 4 spaces
vim.o.expandtab = true -- Pressing the TAB key will insert spaces instead of a TAB character
vim.o.softtabstop = 4 -- Number of spaces inserted instead of a TAB character
vim.o.shiftwidth = 4 -- Number of spaces inserted when indenting

vim.keymap.set("n", "<C-Left>", ":vertical resize -5<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Right>", ":vertical resize +5<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Down>", ":resize -5<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<C-Up>", ":resize +4<CR>", { noremap = true, silent = true })




-- Autosave
-- vim.keymap.set("n", "j", "j:w<CR>")
-- vim.keymap.set("n", "k", "k:w<CR>")
-- vim.keymap.set("n", "h", "h:w<CR>")
-- vim.keymap.set("n", "l", "l:w<CR>")
vim.keymap.set("n", "dd", "dd:w<CR>")
vim.keymap.set("n", "u", "u:w<CR>")


vim.keymap.set("i", "jk", "<Esc>l:w<CR>")
vim.keymap.set("i", "EE", "[]<Esc>i")
vim.keymap.set("i", "BB", "{}<Esc>i")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

require("vim-options")
require("vim-keybindings")
require("lazy").setup("plugins")

-- vim.keymap.set("n", "<leader>e", ":Lexplore<CR>")
-- Hide banner in netrw
vim.g.netrw_banner = 0

-- -- Show files in a vertical split
-- vim.g.netrw_browse_split = 4
--
-- -- Keep cursor on the same file when refreshing
vim.g.netrw_keepdir = 0
--
--
--
--
--

-- vim.api.nvim_create_autocmd("FileType", {
--     pattern = "netrw",
--     callback = function()
--         -- -- Entferne zuerst bestehende Mappings, um Konflikte zu vermeiden
--         -- vim.api.nvim_buf_del_keymap(0, "n", "h")
--         -- vim.api.nvim_buf_del_keymap(0, "n", "l")
--
--         -- Setze neue Mappings
--         local opts = { buffer = true, silent = true, noremap = true }
--
--         -- vim.keymap.set("n", "H", "u", opts)
--         vim.keymap.set("n", "h", "<Plug>NetrwBrowseUpDir", opts)
--         vim.keymap.set("n", "l", "<Plug>NetrwLocalBrowseCheck", opts)
-- 	-- hide / show dotfiles
--         vim.keymap.set("n", "zh", ":<C-U>call <SNR>32_NetrwHidden(1)<CR>", opts)
--
--         -- vim.keymap.set("n", "P", "<C-w>z", opts)
--         --
--         -- vim.keymap.set("n", "L", "<CR>:Lexplore<CR>", opts)
--         -- vim.keymap.set("n", "<Leader>dd", ":Lexplore<CR>", opts)
--     end
-- })
--
--
vim.keymap.set("n", "<C-x>", ":Lazy<CR>")


-- Markdown navigation 
vim.api.nvim_create_autocmd("FileType", {
  pattern = "vimwiki",
  callback = function()
    vim.keymap.set("n", "<CR>", "/^#<CR>zt", { buffer = true, noremap = true, silent = true })
    vim.keymap.set("n", "<BS>", "?^#<CR>zt", { buffer = true, noremap = true, silent = true })
  end,
})

