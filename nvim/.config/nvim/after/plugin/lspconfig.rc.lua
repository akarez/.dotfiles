local status, nvim_lsp = pcall(require, 'lspconfig')
if (not status) then return end

local protocol = require('vim.lsp.protocol')

local on_attach = function(client, bufnr)
  if client.server_capabilities.documentFormattingProvider then
      vim.api.nvim_command [[autogroup Format]]
      vim.api.nvim_command [[autocmd! * <buffer>]]
      vim.api.nvim_command [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_seq_sync()]]
      vim.api.nvim_command [[autogroup END]]
  end
end

---@ source: https://github.com/neovim/nvim-lspconfig/blob/master/doc/server_configurations.md

nvim_lsp.lua_ls.setup{
  on_attach = on_attach,
  settings = {
      Lua = {
        diagnostics = {
          globals = { 'vim' },
        },
        workspace = {
          library = vim.api.nvim_get_runtime_file("", true),
          checkThirdParty = false
        },
      },
    },
}

nvim_lsp.clangd.setup {
  on_attach = on_attach
}

nvim_lsp.arduino_language_server.setup {
  on_attach = on_attach
}

nvim_lsp.pyright.setup {
  on_attach = on_attach
}

nvim_lsp.rust_analyzer.setup {
  on_attach = on_attach
}

nvim_lsp.cssls.setup {
  on_attach = on_attach
}

nvim_lsp.tailwindcss.setup {
  on_attach = on_attach
}

nvim_lsp.emmet_language_server.setup {
  on_attach = on_attach
}