local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)
local my_FQBN = "arduino:avr:uno"
require('lspconfig').lua_ls.setup({})
require('lspconfig').pylsp.setup({})
require('lspconfig').bashls.setup({})
require('lspconfig').html.setup({})
require('lspconfig').cssls.setup({})
require('lspconfig').tsserver.setup({})
require('lspconfig').marksman.setup({})
require('lspconfig').arduino_language_server.setup({
	cmd = {
		"/home/thefredward/go/bin/arduino-language-server",
		"-cli-config", "/home/thefredward/.arduino15/arduino-cli.yaml",
		"-cli", "/home/thefredward/bin/arduino-cli",
		"-clangd", "/usr/bin/clangd-12",
		"-fqbn", my_FQBN
	},
	--capabilities = capabilities,
})
require('lspconfig').bashls.setup({})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
cmp.setup({
	sources = {
		{name = 'path'},
		{name = 'nvim_lsp'},
		{name = 'nvim_lua'},
	},
	formating = lsp_zero.cmp_format(),
	mapping = cmp.mapping.preset.insert({

		['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
		['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
		['<C-y>'] = cmp.mapping.confirm({ select = true}),
		["<C-Space>"] = cmp.mapping.complete(),
	}),
})

