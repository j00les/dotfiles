-- Mason LSP Installer Setup
require('mason').setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗"
		}
	}
})

-- Auto-install LSP servers
require('mason-lspconfig').setup({
	ensure_installed = {
		'ts_ls',  -- TypeScript/JavaScript
		'eslint',  -- ESLint
		'html',  -- HTML
		'cssls',  -- CSS
		'pyright',  -- Python
		'lua_ls',  -- Lua
		'volar',  -- Vue
		'jsonls',  -- JSON
	},
	automatic_installation = true,
})

-- LSP Keybindings (applied when LSP attaches)
local on_attach = function(client, bufnr)
	local opts = { buffer = bufnr, silent = true }

	-- VSCode-like keybindings
	vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)  -- Go to definition
	vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)  -- Go to declaration
	vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)  -- Find references
	vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)  -- Go to implementation
	vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)  -- Hover documentation
	vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)  -- Signature help
	vim.keymap.set('n', '<Leader>rn', vim.lsp.buf.rename, opts)  -- Rename symbol
	vim.keymap.set('n', '<Leader>ca', vim.lsp.buf.code_action, opts)  -- Code action
	vim.keymap.set('n', '<Leader>f', function() vim.lsp.buf.format({ async = true }) end, opts)  -- Format
	vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, opts)  -- Previous diagnostic
	vim.keymap.set('n', ']d', vim.diagnostic.goto_next, opts)  -- Next diagnostic
	vim.keymap.set('n', '<Leader>e', vim.diagnostic.open_float, opts)  -- Show diagnostic
end

-- Get completion capabilities
local capabilities = require('cmp_nvim_lsp').default_capabilities()

-- Configure LSP servers
local lspconfig = require('lspconfig')

-- TypeScript/JavaScript
lspconfig.ts_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

-- ESLint
lspconfig.eslint.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

-- HTML
lspconfig.html.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

-- CSS
lspconfig.cssls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

-- Python
lspconfig.pyright.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

-- Lua
lspconfig.lua_ls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		Lua = {
			diagnostics = {
				globals = { 'vim' },  -- Recognize 'vim' global
			},
			workspace = {
				library = vim.api.nvim_get_runtime_file("", true),
				checkThirdParty = false,
			},
		},
	},
})

-- Vue
lspconfig.volar.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

-- JSON
lspconfig.jsonls.setup({
	on_attach = on_attach,
	capabilities = capabilities,
})

-- Diagnostic configuration
vim.diagnostic.config({
	virtual_text = true,
	signs = true,
	underline = true,
	update_in_insert = false,
	severity_sort = true,
})

-- Diagnostic signs
local signs = { Error = "", Warn = "", Hint = "", Info = "" }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
