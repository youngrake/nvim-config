vim.cmd('colorscheme ' .. GlobalConfig.colorscheme)

-- Cursor line
vim.highlight.create('CursorLineNR', { guifg = "Yellow", ctermfg = "Yellow", guibg = "None", cterm = "bold" }, false);
