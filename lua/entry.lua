vim.cmd [[packadd packer.nvim]]

require('configs.env')
require('configs.key')
require('configs.indent')
require('configs.command')

vim.opt.termguicolors = true
vim.opt.winblend = 0 -- ウィンドウの不透明度
vim.opt.pumblend = 0 -- ポップアップメニューの不透明度
