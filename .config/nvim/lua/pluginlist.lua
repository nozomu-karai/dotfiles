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
						require("plugconfig/neo-tree")
				end,
		},

		-- color scheme
		-- {
		-- 		"cocopon/iceberg.vim",
		-- 		config = function()
		-- 				vim.cmd("colorscheme iceberg")
		-- 		end, 
		-- },
		{
				"folke/tokyonight.nvim",
				config = function()
						vim.cmd("colorscheme tokyonight")
				end, 
		},

		-- auto commentout
		{	"tyru/caw.vim" },

		-- lsp & comletion
		{ "jiangmiao/auto-pairs" },
		{
				"hrsh7th/nvim-cmp",
				config = function()
						require("plugconfig/nvim-cmp")
				end,
				dependencies = {
						{ "hrsh7th/cmp-nvim-lsp" },
						{ "hrsh7th/cmp-buffer" },
						{ "hrsh7th/cmp-path" },
						{ "hrsh7th/cmp-cmdline" },
						{ "L3MON4D3/LuaSnip" }
				},
		},

		-- git
		{ "airblade/vim-gitgutter" },
}

require("lazy").setup(plugins, opts)
