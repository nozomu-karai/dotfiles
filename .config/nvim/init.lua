require("base")

-- ===============================

require("option")
require("pluginlist")
require("mappings")

-- ===============================
-- Local Configuration
if vim.fn.filereadable(vim.fn.expand("~/.nvim_local_init.lua")) ~= 0 then
    dofile(vim.fn.expand("~/.nvim_local_init.lua"))
end
