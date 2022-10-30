-- load the plugins
require('plugins')

-- load the lsp configuration
require('lsp')
require('keymaps')

-- set color scheme
vim.cmd("colorscheme onedarker")

local default_options = {
    expandtab = true,
    shiftwidth = 4,
    tabstop = 4,
    number = true,
    numberwidth = 4,
    signcolumn = "yes",
    fileencoding = "utf-8",
    hidden = true,
    hlsearch = false,
    ignorecase = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    undodir = ".cache/undo",
    undofile = true,
    colorcolumn = '80',
}

-- set the default options
for k, v in pairs(default_options) do
    vim.opt[k] = v
end
