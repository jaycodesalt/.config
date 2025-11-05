-- Set mapleader early
vim.g.mapleader = " "

-- Encoding (Standard UTF-8 settings)
vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- UI and Appearance
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers (essential for Nvim motion)
vim.opt.title = true -- Show file name in window title
vim.opt.cmdheight = 1 -- Command line height
vim.opt.laststatus = 3 -- Global status line (always show)
vim.opt.termguicolors = true -- Enable 24-bit RGB color support
vim.opt.scrolloff = 10 -- Lines of context above/below cursor
vim.opt.showcmd = true -- Show incomplete commands

-- Searching
vim.opt.hlsearch = true -- Highlight search results
vim.opt.ignorecase = true -- Ignore case in search
vim.opt.smartcase = true -- But search case-sensitively if I use any uppercase letters
vim.opt.inccommand = "split" -- Live preview of search/replace commands

-- Indentation and Formatting
vim.opt.autoindent = true -- Auto-indent on new line
vim.opt.smartindent = true -- Smarter auto-indentation
vim.opt.expandtab = true -- Use spaces instead of tabs
vim.opt.smarttab = true -- Smarter handling of tabs/spaces
vim.opt.shiftwidth = 2 -- Size of an indent step (2 spaces is standard)
vim.opt.tabstop = 2 -- Number of spaces a <Tab> counts for (2 spaces is standard)
vim.opt.wrap = false -- Disable line wrapping
vim.opt.breakindent = true -- Maintain indent when wrapping is enabled
vim.opt.formatoptions:append({ "r" }) -- Add asterisks in block comments

-- Backup and Swap Files
vim.opt.backup = false -- Disable backups
vim.opt.writebackup = false -- Disable write backups
vim.opt.swapfile = false -- Disable swap files
vim.opt.undofile = true -- Enable persistent undo

-- File Management
vim.opt.backspace = { "start", "eol", "indent" } -- Make backspace work as expected
vim.opt.path:append({ "**" }) -- Search files recursively
vim.opt.wildignore:append({ "*/node_modules/*", "*/.git/*", "*.bak" }) -- Ignore common folders/files

-- Window Splitting
vim.opt.splitbelow = true -- New split windows go below the current one
vim.opt.splitright = true -- New vertical splits go to the right
vim.opt.splitkeep = "cursor" -- Keep the cursor position when splitting
