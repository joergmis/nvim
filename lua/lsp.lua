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

require('lspconfig').yamlls.setup {
    capabilities = capabilities,
    settings = {
        yaml = {
            schemas = {},
        },
    }
}

-- format on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]
