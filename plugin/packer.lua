local status, packer = pcall(require, 'packer')
if (not status) then return end
packer.startup(function (use)
	-- =================================================================================
	-- base
	-- =================================================================================
	use 'wbthomason/packer.nvim' -- https://github.com/wbthomason/packer.nvim

	-- =================================================================================
	-- utils
	-- =================================================================================
	use 'nvim-lua/popup.nvim'
	use 'skanehira/translate.vim' -- :Translate で翻訳できる
	use 'mattn/emmet-vim'
	-- use 'kyazdani42/nvim-web-devicons'
	use 'nvim-tree/nvim-web-devicons'

	-- =================================================================================
	-- git
	-- =================================================================================
	use 'tpope/vim-fugitive' -- https://github.com/tpope/vim-fugitive
	use 'tpope/vim-rhubarb' -- https://qiita.com/takayama/items/de4341fb8f015ffe4750#tpopevim-rhubarb
	use 'kdheepak/lazygit.nvim'

	-- =================================================================================
	-- easy motion
	-- =================================================================================
	use {
		'phaazon/hop.nvim',
		branch = 'v2', -- optional but strongly recommended
		config = function()
			-- you can configure Hop the way you like here; see :h hop-config
			require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
		end
	}

	-- =================================================================================
	-- other
	-- =================================================================================
	use 'nvim-lualine/lualine.nvim' -- Airline

	-- =================================================================================
	-- lsp
	-- =================================================================================
	use 'williamboman/mason.nvim'
	use 'williamboman/mason-lspconfig.nvim'
	use 'neovim/nvim-lspconfig'
	use 'nvimdev/lspsaga.nvim'

	use 'hrsh7th/cmp-nvim-lsp'
	use 'hrsh7th/cmp-buffer'
	use 'hrsh7th/cmp-path'
	use 'hrsh7th/cmp-cmdline'
	use 'hrsh7th/nvim-cmp'
	use 'hrsh7th/cmp-vsnip'
	use 'hrsh7th/vim-vsnip'

	use 'mattn/emmet-vim' -- emmet

	-- =================================================================================
	-- syntax highlight
	-- =================================================================================
	use { 'nvim-treesitter/nvim-treesitter', { run = ':TSUpdate' } }

	-- =================================================================================
	-- theme
	-- =================================================================================
	-- use({ "catppuccin/nvim", as = "catppuccin" })
	use({
		"folke/tokyonight.nvim",
		as = "tokyonight",
	})

	-- =================================================================================
	-- dir searcher
	-- =================================================================================
	use 'mileszs/ack.vim' -- https://github.com/mileszs/ack.vim https://qiita.com/Biacco/items/b750c073a92a8e9fea7d
	use 'nvim-lua/plenary.nvim'
	use { 'nvim-telescope/telescope.nvim', requires = { 'nvim-lua/plenary.nvim' }} -- https://github.com/nvim-telescope/telescope.nvim#usage
	use { 'nvim-telescope/telescope-file-browser.nvim', requires = {{ 'nvim-telescope/telescope.nvim' }}}
end)


require("tokyonight").setup({
    transparent = true,
    styles = {
	sidebars = "transparent",
	floats = "transparent",
    },
})
vim.cmd[[colorscheme tokyonight-night]]
