require'lspconfig'.angularls.setup{}
require'lspconfig'.ansiblels.setup{}
require'lspconfig'.bashls.setup{}
require'lspconfig'.dockerls.setup{}

require'lspconfig'.eslint.setup{}
-- autocmd BufWritePre *.tsx,*.ts,*.jsx,*.js EslintFixAll

require'lspconfig'.golangci_lint_ls.setup{}
require'lspconfig'.gopls.setup{}

require'lspconfig'.html.setup{}
require'lspconfig'.jsonls.setup{}

require'lspconfig'.rust_analyzer.setup{}
require'lspconfig'.tailwindcss.setup{}
require'lspconfig'.tsserver.setup{}

require('lspconfig').yamlls.setup {
  settings = {
    yaml = {
      schemas = {},
    },
  }
}

require'lspconfig'.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
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

-- format on save
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.formatting_sync()]]

