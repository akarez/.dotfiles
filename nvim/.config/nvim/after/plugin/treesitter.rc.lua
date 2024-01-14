local status, ts = pcall(require, 'nvim-treesitter.configs')
if (not status) then return end

ts.setup {
    highlight = {
        enable = true,
        disable = {},
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
        disable = {},
    },
    ensure_installed = {
        'lua',
        'c',
        'cpp',
        'arduino',
        'python',
        'rust',
        'html',
        'css',
        'javascript',
        'vim',
        'vimdoc',
        'markdown',
        'markdown_inline'
    },
    autotag = {
        enable = true,
    },
    modules = {

    },
    ignore_install = {

    },
    sync_install = true,
    auto_install = true,
}
