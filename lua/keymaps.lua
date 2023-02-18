local opts = {
	noremap = true,
	silent = true,
}

local builtin = require('telescope.builtin')

-- keymaps for searching definitions, references and more
vim.keymap.set('n', 'gD', '<Cmd>lua vim.lsp.buf.declaration()<CR>', opts)
vim.keymap.set('n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
vim.keymap.set('n', 'ga', '<Cmd>lua vim.lsp.buf.code_action()<CR>', opts)
vim.keymap.set('n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
vim.keymap.set('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
vim.keymap.set('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
vim.keymap.set('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
vim.keymap.set('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
vim.keymap.set('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>',
	opts)
vim.keymap.set('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
vim.keymap.set('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
vim.keymap.set('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
vim.keymap.set('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
vim.keymap.set('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
vim.keymap.set('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
vim.keymap.set('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)

-- keymaps for fuzzy searching files and words as well
vim.keymap.set('n', '<space>ff', builtin.find_files, {})
vim.keymap.set('n', '<space>fg', builtin.live_grep, {})
vim.keymap.set('n', '<space>fb', builtin.buffers, {})
vim.keymap.set('n', '<space>fh', builtin.help_tags, {})

-- this also lets you return to vim by <esc> <C-t>
vim.keymap.set('n', '<C-t>', '<cmd>exe v:count1 . "ToggleTerm"<CR>', opts)

function _G.set_terminal_keymaps()
	local termopts = { buffer = 0 }
	vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], termopts)
	vim.keymap.set('t', 'jk', [[<C-\><C-n>]], termopts)
	vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], termopts)
	vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], termopts)
	vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], termopts)
	vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], termopts)
end

-- setup the keys for the tree explorer
vim.keymap.set('n', '<space>e', '<cmd>NvimTreeToggle<CR>', opts)

function _lazygit_toggle()
	lazygit:toggle()
end

vim.keymap.set('n', '<space>gg', '<cmd>lua _lazygit_toggle()<CR>', { noremap = true, silent = true })


-- default mappings but for visibility
require('nvim_comment').setup {
	-- Linters prefer comment and line to have a space in between markers
	marker_padding = true,
	-- should comment out empty or whitespace only lines
	comment_empty = true,
	-- trim empty comment whitespace
	comment_empty_trim_whitespace = true,
	-- Should key mappings be created
	create_mappings = true,
	-- Normal mode mapping left hand side
	line_mapping = "gcc",
	-- Visual/Operator mapping left hand side
	operator_mapping = "gc",
	-- text object mapping, comment chunk,,
	comment_chunk_text_object = "ic",
	-- Hook function to call before commenting takes place
	hook = nil
}
