vim.cmd('autocmd!')

vim.opt.encoding = 'utf-8'
vim.scriptencoding = 'utf-8'
vim.opt.fileencoding = 'utf-8'

vim.wo.number = true

vim.opt.title = true

vim.opt.backup = false				            -- backup file
vim.opt.cmdheight = 2				            -- make the vim command line two lines long
vim.opt.completeopt = {'menuone', 'noselect'}	-- completion menu options
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
vim.opt.wrap = false                            -- don't wrap text
vim.opt.scrolloff = 8                           -- minimal number of lines above and below the cursor
vim.opt.sidescrolloff = 8
vim.opt.autoindent = true
vim.opt.smartindent = true

vim.opt.number = true                           -- show line numbers
vim.opt.signcolumn = 'no'                       -- show the sign column for errors and such
vim.opt.relativenumber = true                   -- show number lines relative to the current line

vim.opt.smartcase = true		            	-- allow smart case
vim.opt.smartindent = true			            -- allow smart indent

vim.opt.splitright = true			            -- put new vertical split window on the right
vim.opt.splitbelow = true			            -- put new horizontal split window on the bottom

vim.opt.undofile = true			            	-- allow persistent undo action
vim.opt.updatetime = 300			            -- completion time
vim.opt.swapfile = false			            -- don't use a swap file
vim.opt.writebackup = false		            	-- don't allow editing a file in use
vim.opt.shell = 'zsh'

vim.opt.fillchars:append { eob = " " }          -- remove ~ from empty lines
vim.opt.spelllang = 'en_us'                     -- spell check
vim.opt.spell = true
vim.opt.termguicolors = true			        -- allow terminal gui colors
vim.opt.winblend = 0                            -- transparency of popup windows
vim.opt.background = 'dark'

---@ copy to clipboard

if vim.fn.has "win32" == 1 then
    vim.opt.clipboard:prepend { 'unnamed', 'unnamedplus' }
  end

if vim.fn.has "macunix" == 1 then
    vim.opt.clipboard:append { 'unnamedplus' }
end

if vim.fn.has "unix" == 1 then
    vim.opt.clipboard:append { 'unnamedplus' }
end

