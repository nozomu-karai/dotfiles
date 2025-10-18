-- Basic movement (shared with VSCode)
vim.keymap.set("n", "j", "gj")
vim.keymap.set("n", "k", "gk")
vim.keymap.set("n", "<S-h>", "^")
vim.keymap.set("n", "<S-l>", "$")

-- Split and window navigation (Neovim only)
if not vim.g.vscode then
    vim.keymap.set("n", "ss", ":split<CR>")
    vim.keymap.set("n", "sv", ":vsplit<CR>")
    vim.keymap.set("n", "sh", "<C-w>h")
    vim.keymap.set("n", "sj", "<C-w>j")
    vim.keymap.set("n", "sk", "<C-w>k")
    vim.keymap.set("n", "sl", "<C-w>l")
end

-- Escape mappings (shared with VSCode)
vim.keymap.set("i", "<C-e>", "<ESC>")
vim.keymap.set("v", "<C-e>", "<ESC>")

-- Visual mode improvements (shared with VSCode)
vim.keymap.set("v", "y", "y`]")
vim.keymap.set("v", "p", "p`]")
vim.keymap.set("v", "<S-h>", "^")
vim.keymap.set("v", "<S-l>", "$")
