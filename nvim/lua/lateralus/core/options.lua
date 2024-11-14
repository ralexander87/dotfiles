vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt

opt.relativenumber = true
opt.number = true
opt.breakindent = true
opt.signcolumn = "yes:3"
opt.scrolloff = 1
opt.cmdheight = 2
opt.laststatus = 3
opt.title = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

-- tabs & indentation
opt.tabstop = 2 -- 2 spaces for tabs (prettier default)
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false
opt.undofile = true

-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if you include mixed case in your search, assumes you want case-sensitive

opt.cursorline = true

-- turn on termguicolors for tokyonight colorscheme to work
-- (have to use iterm2 or any other true color terminal)
opt.termguicolors = true

-- backspace
opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

opt.background = "dark" -- colorschemes that can be light or dark will be made dark

-- clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard as default register
opt.formatoptions:append({ "r" })
-- split windows
opt.splitright = true -- split vertical window to the right
opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
opt.swapfile = false
