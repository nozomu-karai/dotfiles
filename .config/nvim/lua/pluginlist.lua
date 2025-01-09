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
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = {
            { "nvim-lua/plenary.nvim" },
            { "BurntSushi/ripgrep" },
            { "nvim-treesitter/nvim-treesitter" },
        },
        config = function()
            require("plugconfig/telescope")
        end,
    },

    -- color scheme
    --   {
    -- "cocopon/iceberg.vim",
    -- lazy = false,
    -- config = function()
    -- 		vim.cmd("colorscheme iceberg")
    -- end,
    --   },
    -- {
    --     "folke/tokyonight.nvim",
    --     lazy = false,
    --     opts = {
    --         style = "moon", -- "storm", "moon", "night"
    --     },
    --     config = function(_, opts)
    --         require("tokyonight").setup(opts)
    --         vim.cmd("colorscheme tokyonight")
    --     end,
    -- },
    {
        "sainnhe/everforest",
        lazy = false,
        config = function()
            vim.g.everforest_background = "medium" -- "hard", "medium", "soft"
            vim.cmd("colorscheme everforest")
        end,
    },

    -- auto commentout
    { "tyru/caw.vim" },
	{ "Vimjas/vim-python-pep8-indent" },
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("ibl").setup()
        end,
    },
    -- {
    --     "shellRaining/hlchunk.nvim",
    --     event = { "BufReadPre", "BufNewFile" },
    --     config = function()
    --         require("plugconfig/hlchunk")
    --     end,
    -- },

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
            { "L3MON4D3/LuaSnip" },
            {
                "zbirenbaum/copilot-cmp",
                config = true,
            },
        },
    },
    {
        "williamboman/mason.nvim",
        config = function()
            require("plugconfig/mason")
        end,
        dependencies = {
            { "williamboman/mason-lspconfig.nvim" },
            { "neovim/nvim-lspconfig" },
        },
    },

    -- git
    { "airblade/vim-gitgutter" },
    { "tpope/vim-fugitive" },

    -- AI completion
    {
        "zbirenbaum/copilot.lua",
        -- cmd = { "Copilot" },
        event = "InsertEnter",
        config = function()
            vim.defer_fn(function()
                require("plugconfig/copilot")
            end, 100)
        end,
    },

    -- UI
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons", opt = ture },
        config = function()
            require("lualine").setup()
        end,
    },
    {
        "romgrk/barbar.nvim",
        dependencies = {
            { "lewis6991/gitsigns.nvim" },
            { "nvim-tree/nvim-web-devicons" },
        },
        init = function()
            vim.g.barbar_auto_setup = false
        end,
        config = function()
            require("plugconfig/barbar")
        end,
    },
}

require("lazy").setup(plugins, opts)
