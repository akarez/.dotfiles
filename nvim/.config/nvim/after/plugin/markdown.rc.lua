local status_md, markdown = pcall(require, 'markdown')
if (not status_md) then return end

markdown.setup {
    mappings = {
        inline_surround_toggle = "gs",
        inline_surround_toggle_line = "gss",
        inline_surround_delete = "ds",
        inline_surround_change = "cs",
        link_add = "gl",
        link_follow = "gx",
        go_curr_heading = "]c",
        go_parent_heading = "]p",
        go_next_heading = "]]",
        go_prev_heading = "[[",
    },

    inline_surround = {
        emphasis = {
            key = "i",
            txt = "*",
        },
        strong = {
            key = "b",
            txt = "**",
        },
        strikethrough = {
            key = "s",
            txt = "~~",
        },
        code = {
            key = "c",
            txt = "`",
        },
    },

    link = {
        paste = {
            enable = true,
        },
    },

    toc = {
        omit_heading = "toc omit heading",
        omit_section = "toc omit section",
        markers = { "-" },
    },

    hooks = {
        follow_link = nil,
    },

    on_attach = nil,
}

---@ Goyo Setup
vim.g.goyo_width = 50
vim.g.goyo_height = 75
vim.g.goyo_linenr = 0

vim.g.limelight_conceal_ctermfg = 'gray'
vim.g.limelight_conceal_ctermfg = 240

vim.g.limelight_conceal_guifg = 'DarkGray'
vim.g.limelight_conceal_guifg = '#777777'

vim.g.limelight_default_coefficient = 0.7

vim.g.limelight_paragraph_span = 1

vim.g.limelight_bop = '^\\s'
vim.g.limelight_eop = '\\ze\n^\\s'

vim.g.limelight_priority = -1

local goyo_group = vim.api.nvim_create_augroup('GoyoGroup', {clear = true})

vim.api.nvim_create_autocmd('User', {
    desc = 'Enable LimeLight on GoYo enter',
    group = goyo_group,
    pattern = 'GoyoEnter',
    callback = function()
       require('lualine').hide()
       vim.o.winbar = ''
       -- also hide tabline
       -- vim.o.showtabline = 0
       vim.cmd('Limelight')
    end,
 })

 vim.api.nvim_create_autocmd('User', {
    desc = 'Disable LimeLight on GoYo leave',
    group = goyo_group,
    pattern = 'GoyoLeave',
    callback = function()
       -- reshow tabline
       -- vim.o.showtabline = 2
       require('lualine').hide({unhide = true})
       vim.cmd('Limelight!')
    end,
 })
