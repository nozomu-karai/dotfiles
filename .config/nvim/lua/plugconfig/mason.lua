local mason = require("mason")
mason.setup({
	ui = {
		icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
		}
	}
})

local on_attach = function(client, bufnr)
	local function buf_set_keymap(...)
		vim.api.nvim_buf_set_keymap(bufnr, ...)
	end

	local function buf_set_option(...)
		vim.api.nvim_buf_set_option(bufnr, ...)
	end

	-- Enable completion triggered by <c-x><c-o>
	buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")

	-- Mappings.
	local opts = { noremap = true, silent = true }

	-- See `:help vim.lsp.*` for documentation on any of the below functions
	buf_set_keymap("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<CR>", opts)
	buf_set_keymap("n", "gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
	buf_set_keymap("n", "?", "<cmd>lua vim.lsp.buf.hover()<CR>", opts)
	buf_set_keymap("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", opts)
	buf_set_keymap("n", "g?", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
	-- buf_set_keymap("n", "[_Lsp]wa", "<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>", opts)
	-- buf_set_keymap("n", "[_Lsp]wr", "<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>", opts)
	-- buf_set_keymap("n", "[_Lsp]wl", "<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>", opts)
	-- buf_set_keymap("n", "[_Lsp]D", "<cmd>lua vim.lsp.buf.type_definition()<CR>", opts)
	-- buf_set_keymap("n", "[_Lsp]rn", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
	-- buf_set_keymap("n", "[_Lsp]a", "<cmd>lua vim.lsp.buf.code_action()<CR>", opts)
	-- buf_set_keymap("n", "gr", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
	-- buf_set_keymap("n", "[_Lsp]e", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)
	-- buf_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
	-- buf_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
	-- buf_set_keymap("n", "[_Lsp]q", "<cmd>lua vim.diagnostic.setloclist()<CR>", opts)
	-- buf_set_keymap("n", "[_Lsp]f", "<cmd>lua vim.lsp.buf.formatting()<CR>", opts)
end

local lspconfig = require("lspconfig")
local capabilities = require("cmp_nvim_lsp").default_capabilities()
require('mason-lspconfig').setup_handlers({
	function(server_name)
			lspconfig[server_name].setup({ capabilities = capabilities, on_attach = on_attach })
	end,
	["pyright"] = function()
		lspconfig.pyright.setup({
			capabilities = capabilities,
			on_attach = on_attach,
			settings = {
				python = {
					venvPath = ".",
					pythonPath = "./.venv/bin/python",
					analysis = {
							extraPaths = {"."}
					}
				}
				-- python = {
				-- 	venvPath = ".",
				-- 	pythonPath = "./venv/bin/python",
				-- 	analysis = {
				-- 			extraPaths = {"."}
				-- 	}
				-- }
			}
		})
	end,
})
