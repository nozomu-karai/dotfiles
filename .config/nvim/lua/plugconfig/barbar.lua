require("bufferline").setup()

local map = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

map("n", "<C-j>", "<Cmd>BufferPrevious<CR>", opts)
map("n", "<C-k>", "<Cmd>BufferNext<CR>", opts)
map("n", "<leader>q", "<Cmd>BufferClose<CR>", opts)
