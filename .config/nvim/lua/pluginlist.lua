local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
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

local plugins = {
		-- filer
		{ "nvim-lua/popup.nvim" },
		{
				"nvim-neo-tree/neo-tree.nvim",
				keys = {
						{ "<leader>t", "<cmd>Neotree toggle<cr>", desc = "NeoTree" },
				},
				dependencies = {
						"nvim-lua/plenary.nvim",
						"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
						"MunifTanjim/nui.nvim",
				},
				config = function()
						require("neo-tree").setup()
				end,
		},

		-- color scheme
		{
				"cocopon/iceberg.vim",
				config = function()
						vim.cmd("colorscheme iceberg")
				end, 
		},

		-- auto comment
}

require("lazy").setup(plugins, opts)
