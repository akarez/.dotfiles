-- [[ Setting options ]]
-- See `:help vim.opt`

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- Set UTF-8 encoding for files and editor behavior
vim.opt.encoding = "utf-8"
vim.scriptencoding = "utf-8"
vim.opt.fileencoding = "utf-8"

-- Show absolute and relative line numbers
vim.opt.number = true -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers

-- Keep the sign column visible to prevent text shifting
vim.opt.signcolumn = "yes" -- Show sign column (for diagnostics, git signs, etc.)

-- Highlight the current line
vim.opt.cursorline = true -- Highlight the line under cursor

-- Display the window title
vim.opt.title = true -- Show filename in terminal title

-- Set height of the command line (bottom area)
vim.opt.cmdheight = 2 -- More space for messages

-- Hide the default mode text since statusline will show it
vim.opt.showmode = false -- Don't show mode (handled by statusline)

-- Enable 24-bit RGB color in the terminal
vim.opt.termguicolors = true -- Use true colors in the terminal

-- Use a dark background theme
vim.opt.background = "dark" -- Tell Neovim to use a dark background

-- Set transparency for floating windows
vim.opt.winblend = 0 -- No blending (fully opaque)

-- Enable mouse support in all modes
vim.opt.mouse = "a" -- Enable mouse for all modes

-- Display special whitespace characters
vim.opt.list = false -- Don't show invisible characters
vim.opt.listchars = { -- Set characters for whitespace display
	tab = "» ",
	trail = "·",
	nbsp = "␣",
}

-- Show tab line always (useful for multiple tabs)
vim.opt.showtabline = 4 -- Always show tabline

-- Set popup menu height for completion
vim.opt.pumheight = 10 -- Max number of items in popup menu

-- Show completion menu with specific behavior
vim.opt.completeopt = { "menuone", "noselect" } -- Better autocompletion UI

-- Show substitutions live as you type
vim.opt.inccommand = "split" -- Live preview for :substitute

-- Set indentation preferences
vim.opt.tabstop = 4 -- Number of spaces per tab
vim.opt.shiftwidth = 4 -- Number of spaces per indent
vim.opt.expandtab = true -- Convert tabs to spaces
vim.opt.autoindent = true -- Auto-indent new lines
vim.opt.smartindent = true -- Smart auto-indenting on new lines

-- Disable text wrapping
vim.opt.wrap = false -- Do not wrap long lines

-- Set minimum screen lines to keep above/below cursor
vim.opt.scrolloff = 10 -- Lines of context above/below
vim.opt.sidescrolloff = 8 -- Columns of context to the sides

-- Enable searching options
vim.opt.hlsearch = true -- Highlight all search matches
vim.opt.incsearch = true -- Show matches as you type
vim.opt.ignorecase = true -- Case-insensitive search...
vim.opt.smartcase = true -- ...unless uppercase in search query

-- Configure split behavior
vim.opt.splitright = true -- Vertical splits to the right
vim.opt.splitbelow = true -- Horizontal splits below

-- Enable persistent undo
vim.opt.undofile = true -- Save undo history to disk

-- Reduce time before swap/autocommands fire
vim.opt.updatetime = 250 -- Faster completion and cursor hold events
vim.opt.timeoutlen = 300 -- Time to wait for mapped sequence

-- Disable swap and backup files
vim.opt.backup = false -- Don't create backup files
vim.opt.swapfile = false -- Don't use swap files
vim.opt.writebackup = false -- Don't allow editing files that are being written to elsewhere

-- Set shell
vim.opt.shell = "zsh" -- Use Zsh as the shell

-- Clean up display of empty lines
vim.opt.fillchars:append({ eob = " " }) -- Remove ~ from empty buffer lines

-- Disable spell checking (set to true if writing prose)
vim.opt.spell = false -- Disable spell check

-- Clipboard integration
vim.opt.clipboard = "unnamedplus" -- Use system clipboard
