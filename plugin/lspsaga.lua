local status, lspsaga = pcall(require, 'lspsaga')
if (not status) then return end

lspsaga.setup({
	code_action_lightbulb = {
		enable = false,
	},
	ui = {
		code_action = ''
	},
	finder = {
		max_height = 0.6,
		-- これは必須です / REQUIRED
		default = 'tyd+ref+imp+def',
		-- ここは任意でお好きなキーバインドにしてください / optional
		keys = {
			toggle_or_open = '<CR>',
			vsplit = 'v',
			split = 's',
			tabnew = 't',
			tab = 'T',
			quit = 'q',
			close = '<Esc>',
		},
		-- これは必須です / REQUIRED
		methods = {
			tyd = 'textDocument/typeDefinition',
		}
	}
})
