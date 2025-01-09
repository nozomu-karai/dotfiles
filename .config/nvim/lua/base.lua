if vim.fn.has("unix") == 1 then
    vim.env.LANG = "en_US.UTF-8"
else
    vim.env.LANG = "en"
end
vim.cmd([[ "language " .. os.getenv("LANG") ]])
vim.o.langmenu = os.getenv("LANG")

vim.o.encoding = "utf-8"
vim.o.fileencodings = "ucs-bom,utf-8,euc-jp,iso-2022-jp,cp932,sjis,latin1"
vim.o.fileformats = "unix,dos,mac"
