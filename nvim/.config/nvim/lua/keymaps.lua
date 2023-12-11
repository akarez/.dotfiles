local map = vim.keymap

-- invcrement/decrement number in normal mode
map.set('n', '+', '<C-a>')
map.set('n', '-', '<C-x>')

-- delete full word backwards
map.set('n', 'dw', 'vb"_d')

-- Select all
map.set('n', '<C-a>', 'gg<S-v>G')

-- Save with root permission (not working for now)
vim.api.nvim_create_user_command('W', 'w !sudo tee > /dev/null %', {})

-- tabs ----------------------------------------

-- new tab
map.set('n', 'te', ':tabedit')

-- tab navigation
map.set('n', '<C-Tab>', 'gt')

-- Split window
map.set('n', 'ss', ':split<Return><C-w>w')
map.set('n', 'sv', ':vsplit<Return><C-w>w')

-- Move window
map.set('n', '<Space>', '<C-w>w')
map.set('', 'sh', '<C-w>h')
map.set('', 'sk', '<C-w>k')
map.set('', 'sj', '<C-w>j')
map.set('', 'sl', '<C-w>l')

-- Resize window
map.set('n', '<C-w><left>', '<C-w><')
map.set('n', '<C-w><right>', '<C-w>>')
map.set('n', '<C-w><up>', '<C-w>+')
map.set('n', '<C-w><down>', '<C-w>-')
