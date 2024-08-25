local vim = vim

-- Git Commands
vim.cmd [[
nnoremap [git]    <Nop>
nmap     <Space>g [git]
nnoremap <silent> [git]s :Git status -sb<CR>
nnoremap <silent> [git]d :<C-u>Gdiff<CR>
nnoremap <silent> [git]b :Git blame<CR>
nnoremap <silent> [git]h :<C-u>GBrowse<CR>
nnoremap <silent> [git]g :LazyGit<CR>
]]

-- File Commands
vim.cmd [[
nnoremap [file]    <Nop>
nmap     <Space>f [file]
nnoremap [file]s  :Ack
nnoremap [file]i  <cmd>Telescope file_browser<cr>
nnoremap [file]g  <cmd>Telescope live_grep<cr>
nnoremap [file]b  <cmd>Telescope buffers<cr>
nnoremap [file]h  <cmd>Telescope help_tags<cr>
nnoremap [file]f  <cmd>Telescope find_files<cr>

nnoremap <C-p> <cmd>Telescope find_files<cr>
nnoremap <C-f> :Ack
]]

vim.cmd [[
nnoremap [code]  <Nop>
nmap     <Space>c [code]
nnoremap [code]d :CodeDefinition<CR>
nnoremap [code]f :CodeFormat<CR>
nnoremap [code]h :CodeHover<CR>
nnoremap [code]a :CodeAction<CR>
nnoremap [code]r :CodeRename<CR>
]]

vim.cmd [[
nnoremap [search]  <Nop>
nmap     f [search]
nnoremap [search]f :HopWord<CR>
]]

-- place this in one of your configuration file(s)
-- local status, hop = pcall(require, 'hop')
-- if (not status) then return end
--
-- local directions = require('hop.hint').HintDirection
-- 	vim.keymap.set('', 'f', function()
-- 	  hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true })
-- end, {remap=true})
--
-- vim.keymap.set('', 'F', function()
-- 	hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true })
-- end, {remap=true})
--
-- vim.keymap.set('', 't', function()
-- 	hop.hint_char1({ direction = directions.AFTER_CURSOR, current_line_only = true, hint_offset = -1 })
-- end, {remap=true})
--
-- vim.keymap.set('', 'T', function()
-- 	hop.hint_char1({ direction = directions.BEFORE_CURSOR, current_line_only = true, hint_offset = 1 })
-- end, {remap=true})
