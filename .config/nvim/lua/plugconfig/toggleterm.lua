require("toggleterm").setup({
	open_mapping = [[<c-r>]], -- or { [[<c-\>]], [[<c-¥>]] } if you also use a Japanese keyboard.
	shell = vim.o.shell,
	auto_scroll = true,
	direction = "float"
})
