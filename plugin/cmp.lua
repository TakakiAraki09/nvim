-- Set up nvim-cmp.
local vim = vim
local status, cmp = pcall(require, 'cmp')
if (not status) then return end

cmp.setup({
	snippet = {
		expand = function(args)
			vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
		end,
	},
	mapping = cmp.mapping.preset.insert({
		['<C-b>'] = cmp.mapping.scroll_docs(-4),
		['<C-f>'] = cmp.mapping.scroll_docs(4),
		['<C-Space>'] = cmp.mapping.complete(),
		['<C-e>'] = cmp.mapping.abort(),
		['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
	}),
	sources = cmp.config.sources({
		{ name = 'nvim_lsp' },
		{ name = 'vsnip' },
	}, {
		{ name = 'buffer' },
	})
})

cmp.setup.cmdline({ '/', '?' }, {
	mapping = cmp.mapping.preset.cmdline(),
	sources = {
		{ name = 'buffer' }
	}
})

cmp.setup.cmdline(':', {
	mapping = cmp.mapping.preset.cmdline(),
	sources = cmp.config.sources({
		{ name = 'path' }
	}, {
		{ name = 'cmdline' }
	}),
	matching = { disallow_symbol_nonprefix_matching = false }
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()
require('lspconfig')['<YOUR_LSP_SERVER>'].setup {
	capabilities = capabilities
}
