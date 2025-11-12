local cmp = require('cmp')
local luasnip = require('luasnip')

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body)
		end,
	},

	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},

	mapping = cmp.mapping.preset.insert({
		-- VSCode-like keybindings
		['<C-Space>'] = cmp.mapping.complete(),  -- Trigger completion
		['<C-e>'] = cmp.mapping.abort(),  -- Close completion
		['<CR>'] = cmp.mapping.confirm({ select = true }),  -- Confirm selection
		['<Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			else
				fallback()
			end
		end, { 'i', 's' }),
		['<S-Tab>'] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, { 'i', 's' }),
		['<C-d>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
	}),

	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },  -- LSP
		{ name = 'luasnip' },  -- Snippets
		{ name = 'buffer' },  -- Buffer words
		{ name = 'path' },  -- File paths
	}),

	formatting = {
		format = function(entry, vim_item)
			-- Add source name
			vim_item.menu = ({
				nvim_lsp = '[LSP]',
				luasnip = '[Snippet]',
				buffer = '[Buffer]',
				path = '[Path]',
			})[entry.source.name]
			return vim_item
		end,
	},

	experimental = {
		ghost_text = true,  -- Show preview
	},
})

-- Use buffer source for `/` and `?` (search)
cmp.setup.cmdline({ '/', '?' }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = 'buffer' }
	}
})

-- Use cmdline & path source for ':' (command mode)
cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	})
})
