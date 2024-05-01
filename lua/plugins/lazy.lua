local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
--	{
--		--dir = [[~\start-screen]],
--		"start-screen",
--		--main = "plugins/start-screen",
--		lazy = false,
--	},
	require("plugins.start-screen"),
	require("plugins.colourschemes"),
	require("plugins")
})
