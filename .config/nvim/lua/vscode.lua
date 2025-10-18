-- VSCode-Neovim specific configuration
-- This file is loaded only when running inside VSCode

-- VSCode specific keymaps
local vscode = require('vscode-neovim')

-- File navigation
vim.keymap.set('n', '<leader>ff', function()
    vscode.action('workbench.action.quickOpen')
end)

vim.keymap.set('n', '<leader>fg', function()
    vscode.action('workbench.action.findInFiles')
end)

-- File explorer
vim.keymap.set('n', '<leader>t', function()
    vscode.action('workbench.action.toggleSidebarVisibility')
end)

-- Comment toggle (use VSCode's native comment)
vim.keymap.set('n', 'gcc', function()
    vscode.action('editor.action.commentLine')
end)

vim.keymap.set('v', 'gc', function()
    vscode.action('editor.action.commentLine')
end)

-- Code actions
vim.keymap.set('n', 'gd', function()
    vscode.action('editor.action.revealDefinition')
end)

vim.keymap.set('n', 'gr', function()
    vscode.action('editor.action.goToReferences')
end)

vim.keymap.set('n', 'gi', function()
    vscode.action('editor.action.goToImplementation')
end)

vim.keymap.set('n', 'K', function()
    vscode.action('editor.action.showHover')
end)

vim.keymap.set('n', '<leader>rn', function()
    vscode.action('editor.action.rename')
end)

vim.keymap.set('n', '<leader>ca', function()
    vscode.action('editor.action.quickFix')
end)

-- Format
vim.keymap.set('n', '<leader>f', function()
    vscode.action('editor.action.formatDocument')
end)

vim.keymap.set('v', '<leader>f', function()
    vscode.action('editor.action.formatSelection')
end)

-- Terminal
vim.keymap.set('n', '<C-\\>', function()
    vscode.action('workbench.action.terminal.toggleTerminal')
end)

-- Buffer/Tab navigation (use VSCode tabs)
vim.keymap.set('n', '<Tab>', function()
    vscode.action('workbench.action.nextEditor')
end)

vim.keymap.set('n', '<S-Tab>', function()
    vscode.action('workbench.action.previousEditor')
end)

vim.keymap.set('n', '<leader>w', function()
    vscode.action('workbench.action.closeActiveEditor')
end)

-- Split navigation (VSCode groups)
vim.keymap.set('n', '<leader>v', function()
    vscode.action('workbench.action.splitEditorRight')
end)

vim.keymap.set('n', '<leader>s', function()
    vscode.action('workbench.action.splitEditorDown')
end)

-- Focus groups
vim.keymap.set('n', '<C-h>', function()
    vscode.action('workbench.action.focusLeftGroup')
end)

vim.keymap.set('n', '<C-j>', function()
    vscode.action('workbench.action.focusBelowGroup')
end)

vim.keymap.set('n', '<C-k>', function()
    vscode.action('workbench.action.focusAboveGroup')
end)

vim.keymap.set('n', '<C-l>', function()
    vscode.action('workbench.action.focusRightGroup')
end)
