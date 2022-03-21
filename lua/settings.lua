local options = {
  clipboard      = "unnamed,unnamedplus",   --- Copy-paste between vim and everything else
  cmdheight      = 2,                       --- Give more space for displaying messages
  completeopt    = "menu,menuone,noselect", --- Better autocompletion
  cursorline     = true,                    --- Highlight of current line
  emoji          = false,                   --- Fix emoji display
  expandtab      = true,                    --- Use spaces instead of tabs
  foldlevelstart = 99,                      --- Expand all folds by default
  foldtext       = "CustomFold()",          --- Emit custom function for foldtext
  ignorecase     = true,                    --- Needed for smartcase
  lazyredraw     = true,                    --- Makes macros faster & prevent errors in complicated mappings
  mouse          = "a",                     --- Enable mouse
  number         = true,                    --- Shows current line number
  relativenumber = true,                    --- Enables relative number
  scrolloff      = 8,                       --- Always keep space when scrolling to bottom/top edge
  signcolumn     = "yes",                   --- Add extra sign column next to line number
  smartcase      = true,                    --- Uses case in search
  smartindent    = true,                    --- Makes indenting smart
  smarttab       = true,                    --- Makes tabbing smarter will realize you have 2 vs 4
  splitright     = true,                    --- Vertical splits will automatically be to the right
  swapfile       = false,                   --- Swap not needed
  termguicolors  = true,                    --- Correct terminal colors
  timeoutlen     = 300,                     --- Faster completion
  undofile       = true,                    --- Sets undo to file
  updatetime     = 100,                     --- Faster completion
  viminfo        = "'1000",                 --- Increase the size of file history
  wildignore     = "*node_modules/**",      --- Don't search inside Node.js modules (works for gutentag)
  wrap           = false,                   --- Display long lines as just one line
  writebackup    = false,                   --- Not needed
  autoindent     = true,                    --- Good auto indent
  backspace      = "indent,eol,start",      --- Making sure backspace works
  backup         = false,                   --- Recommended by coc
  conceallevel   = 0,                       --- Show `` in markdown files
  encoding       = "utf-8",                 --- The encoding displayed
  errorbells     = false,                   --- Disables sound effect for errors
  fileencoding   = "utf-8",                 --- The encoding written to file
  incsearch      = true,                    --- Start searching before pressing enter
  showmode       = true,                    --- Don't show things like -- INSERT -- anymore
  shiftwidth     = 4,                       --- Change a number of space characeters inseted for indentation
  softtabstop    = 4,                       --- Insert 'x' spaces for a tab
  tabstop        = 4,                       --- Insert 'x' spaces for a tab
  showtabline    = 2,                       --- Always show tabs
}

local globals = {
  dashboard_default_executive = GlobalConfig.plugins.dashboard.fuzzy_plugin, --- Use fuzzy search plugin in dashboard
  fillchars                   = "fold:\\ ", --- Fill chars needed for folds
  mapleader                   = ' ',        --- Map leader key to SPC
  speeddating_no_mappings     = 1,          --- Disable default mappings for speeddating
  rustfmt_autosave            = 1,
}

vim.opt.shortmess:append('c');
vim.opt.formatoptions:remove('c');
vim.opt.formatoptions:remove('r');
vim.opt.formatoptions:remove('o');

for k, v in pairs(options) do
  vim.opt[k] = v
end

for k, v in pairs(globals) do
  vim.g[k] = v
end

vim.cmd 'autocmd BufRead,BufNewFile *.hbs set filetype=html.handlebars'