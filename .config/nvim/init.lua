require("base")

-- ===============================

require("option")

-- VSCode-Neovim integration
if vim.g.vscode then
    -- VSCode extension
    require("vscode-setting")
else
    -- Ordinary Neovim
    require("pluginlist")
end

require("mappings")

-- ===============================
-- Local Configuration
if vim.fn.filereadable(vim.fn.expand("~/.nvim_local_init.lua")) ~= 0 then
    dofile(vim.fn.expand("~/.nvim_local_init.lua"))
end
