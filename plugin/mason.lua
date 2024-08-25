local status, mason = pcall(require, 'mason')
if (not status) then return end

-- ref https://github.com/williamboman/mason.nvim
mason.setup({
	ui = {
		icons = {
			package_installed = "v",
			package_pending = "->",
			package_uninstalled = "x"
		}
	}
})

require('mason-lspconfig').setup_handlers({ function(server)
	require('lspconfig')[server].setup({})
end })
