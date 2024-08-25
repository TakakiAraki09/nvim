local vim = vim
local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
  highlight = {
    enable = true,
    -- disable = {},
  },
  indent = {
    enable = true,
    -- disable = {},
  },
  ensure_installed = {
    "tsx",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "css",
    "html",
    "lua"
  },
  autotag = {
    enable = true,
  },
}

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

vim.cmd [[
    "=====================================================================
    " termguicolors
    "=====================================================================
    " configure nvcode-color-schemes
    let g:nvcode_termcolors=256
    " colorscheme catppuccin " Or whatever colorscheme you make
    " checks if your terminal has 24-bit color support
    if (has("termguicolors"))
        set termguicolors
        hi LineNr ctermbg=NONE guibg=NONE
    endif
    ]]
