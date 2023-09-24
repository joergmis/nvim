local capabilities = require('cmp_nvim_lsp').default_capabilities()

require 'lspconfig'.angularls.setup { capabilities = capabilities }
require 'lspconfig'.ansiblels.setup { capabilities = capabilities }
require 'lspconfig'.bashls.setup { capabilities = capabilities }
require 'lspconfig'.dockerls.setup { capabilities = capabilities }

require 'lspconfig'.eslint.setup { capabilities = capabilities }
-- autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll

require 'lspconfig'.golangci_lint_ls.setup { capabilities = capabilities }
require 'lspconfig'.gopls.setup { capabilities = capabilities }

require 'lspconfig'.html.setup { capabilities = capabilities }
require 'lspconfig'.jsonls.setup { capabilities = capabilities }

require 'lspconfig'.rust_analyzer.setup { capabilities = capabilities }
require 'lspconfig'.tailwindcss.setup { capabilities = capabilities }
require 'lspconfig'.tsserver.setup { capabilities = capabilities }

require 'lspconfig'.clangd.setup { 
    capabilities = capabilities,
    -- see clangd --help
    cmd = { "clangd", "--all-scopes-completion" }
}

require('lspconfig').yamlls.setup {
    capabilities = capabilities,
    settings = {
        yaml = {
            schemas = {},
        },
    }
}

require 'lspconfig'.lua_ls.setup {
    capabilities = capabilities,
    settings = {
        Lua = {
            runtime = {
                -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
                version = 'LuaJIT',
            },
            diagnostics = {
                -- Get the language server to recognize the `vim` global
                globals = { 'vim' },
            },
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        },
    },
}
