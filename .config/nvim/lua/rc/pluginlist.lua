local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"--single-branch",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end
vim.opt.runtimepath:prepend(lazypath)

----------------------------------------------------------------
---- Load local plugins
local function load_local_plugins()
	if vim.fn.filereadable(vim.fn.expand("~/.nvim_pluginlist_local.lua")) == 1 then
		return dofile(vim.fn.expand("~/.nvim_pluginlist_local.lua"))
	end
end
local local_plugins = load_local_plugins() or {}

local plugins = {
	-- ------------------------------------------------------------
	-- Installer
	{ "folke/lazy.nvim" },

}

require("lazy").setup(vim.tbl_deep_extend("force", plugins, local_plugins), {
	defaults = {
		lazy = true, -- should plugins be lazy-loaded?
	},
	dev = {
		path = vim.fn.stdpath("data") .. "/dev",
	},
})

