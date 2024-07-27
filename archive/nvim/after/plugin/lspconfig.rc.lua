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
  on_attach = on_attach,
    capabilities = {
      general = {
        positionEncodings = { "utf-16" }
      },
      textDocument = {
        callHierarchy = {
          dynamicRegistration = false
        },
        codeAction = {
          codeActionLiteralSupport = {
            codeActionKind = {
              valueSet = { "", "quickfix", "refactor", "refactor.extract", "refactor.inline", "refactor.rewrite", "source", "source.organizeImports" }
            }
          },
          dataSupport = true,
          dynamicRegistration = true,
          isPreferredSupport = true,
          resolveSupport = {
            properties = { "edit" }
          }
        },
        completion = {
          completionItem = {
            commitCharactersSupport = false,
            deprecatedSupport = false,
            documentationFormat = { "markdown", "plaintext" },
            preselectSupport = false,
            snippetSupport = false
          },
          completionItemKind = {
            valueSet = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25 }
          },
          contextSupport = false,
          dynamicRegistration = false
        },
        declaration = {
          linkSupport = true
        },
        definition = {
          dynamicRegistration = true,
          linkSupport = true
        },
        diagnostic = {
          dynamicRegistration = false
        },
        documentHighlight = {
          dynamicRegistration = false
        },
        documentSymbol = {
          dynamicRegistration = false,
          hierarchicalDocumentSymbolSupport = true,
          symbolKind = {
            valueSet = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26 }
          }
        },
        formatting = {
          dynamicRegistration = true
        },
        hover = {
          contentFormat = { "markdown", "plaintext" },
          dynamicRegistration = true
        },
        implementation = {
          linkSupport = true
        },
        inlayHint = {
          dynamicRegistration = true,
          resolveSupport = {
            properties = { "textEdits", "tooltip", "location", "command" }
          }
        },
        publishDiagnostics = {
          dataSupport = true,
          relatedInformation = true,
          tagSupport = {
            valueSet = { 1, 2 }
          }
        },
        rangeFormatting = {
          dynamicRegistration = true
        },
        references = {
          dynamicRegistration = false
        },
        rename = {
          dynamicRegistration = true,
          prepareSupport = true
        },
        semanticTokens = vim.NIL,
        signatureHelp = {
          dynamicRegistration = false,
          signatureInformation = {
            activeParameterSupport = true,
            documentationFormat = { "markdown", "plaintext" },
            parameterInformation = {
              labelOffsetSupport = true
            }
          }
        },
        synchronization = {
          didSave = true,
          dynamicRegistration = false,
          willSave = true,
          willSaveWaitUntil = true
        },
        typeDefinition = {
          linkSupport = true
        }
      },
      window = {
        showDocument = {
          support = true
        },
        showMessage = {
          messageActionItem = {
            additionalPropertiesSupport = false
          }
        },
        workDoneProgress = true
      },
      workspace = {
        applyEdit = true,
        configuration = true,
        didChangeConfiguration = {
          dynamicRegistration = false
        },
        didChangeWatchedFiles = {
          dynamicRegistration = true,
          relativePatternSupport = true
        },
        inlayHint = {
          refreshSupport = true
        },
        semanticTokens = vim.NIL,
        symbol = {
          dynamicRegistration = false,
          symbolKind = {
            valueSet = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26 }
          }
        },
        workspaceEdit = {
          resourceOperations = { "rename", "create", "delete" }
        },
        workspaceFolders = true
      }
    }
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
