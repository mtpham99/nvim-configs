--
-- lua/config/mappings.lua
--

-- pane navigation
vim.keymap.set('n', '<C-h>', '<C-w><C-h>')
vim.keymap.set('n', '<C-l>', '<C-w><C-l>')
vim.keymap.set('n', '<C-j>', '<C-w><C-j>')
vim.keymap.set('n', '<C-k>', '<C-w><C-k>')

-- better wrapped line navigation
vim.keymap.set('n', 'j', 'gj')
vim.keymap.set('n', 'k', 'gk')

-- clear search highlights
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
