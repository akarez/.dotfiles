vim.cmd("autocmd!")

vim.scriptencoding = "utf-8"
vim.opt.encoding = "utf-8"
vim.opt.fileencoding = "utf-8"

vim.wo.number = true

vim.opt.title = true

vim.opt.backup = false				            -- backup file
vim.opt.clipboard = "unnamedplus"	            -- allow access to system clipboard
vim.opt.cmdheight = 2				            -- make the vim command line two lines long
vim.opt.completeopt = {"menuone", "noselect"}	-- ?
vim.opt.conceallevel = 0			            -- allow viewing `` in markdown files

vim.opt.hlsearch = true				            -- highlight previous searches
vim.opt.incsearch = true
vim.opt.ignorecase = true			            -- ignore case when searching
vim.opt.pumheight = 10			            	-- height of the pop up menu

vim.opt.showmode = false		            	-- don't show current mode

vim.opt.tabstop = 4                             -- spaces per tab
vim.opt.shiftwidth = 4			            	-- spaces per indentation
vim.opt.showtabline = 4			            	-- show tabs
vim.opt.expandtab = true		            	-- use spaces instead of tabs
vim.opt.wrap = true                            -- don't wrap text
vim.opt.scrolloff = 8                           -- minimal number of lines above and below the cursor
vim.opt.sidescrolloff = 8

vim.opt.number = true                           -- show line numbers
vim.opt.signcolumn = "no"                       -- show the sign column for errors and such
vim.opt.relativenumber = false                   -- show number lines relative to the current line

vim.opt.smartcase = true		            	-- allow smart case
vim.opt.smartindent = true			            -- allow smart indent

vim.opt.splitright = true			            -- put new vertical split window on the right
vim.opt.splitbelow = true			            -- put new horizontal split window on the bottom

vim.opt.termguicolors = true			        -- allow terminal gui colors
vim.opt.undofile = true			            	-- allow persistent undo action
vim.opt.updatetime = 300			            -- completion time
vim.opt.swapfile = false			            -- don't use a swap file
vim.opt.writebackup = false		            	-- don't allow editing a file in use
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"  -- undodir directory?
