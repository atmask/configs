vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt
opt.relativenumber = true
opt.number = true


-- tabs and spaces 
opt.tabstop = 2 -- 2 spaces for tabs
opt.shiftwidth = 2 -- 2 spaces for indent width
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting a new line

opt.wrap = false


-- search settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- if search has mixed case then assum case-sensitive

opt.cursorline = true

-- turn on termguicolours or tokyonight colour scheme
-- need a true colour terminal
opt.termguicolors = true
opt.background = "dark"
opt.signcolumn = "yes" -- show sign col so that test does not shift

-- backspace
opt.backspace = "indent,eol,start" --allow backspace on indent, eol, or insert mode start position

-- clipboard
opt.clipboard:append("unnamedplus") -- use sys clipboard as dflt register


-- split windows
opt.splitright = true
opt.splitbelow = true

