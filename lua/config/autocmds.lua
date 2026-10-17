--
-- lua/config/autocmds.lua
--

-- highlight on yank
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking text',
  group = vim.api.nvim_create_augroup('highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank {
      higroup = 'IncSearch',
      timeout = 200,
    }
  end,
})

-- trim tailing whitespace
vim.api.nvim_create_autocmd('BufWritePre', {
  desc = 'Remove trailing whitespace on save',
  group = vim.api.nvim_create_augroup('trim-whitespace', { clear = true }),
  callback = function()
    local view = vim.fn.winsaveview()
    vim.cmd [[%s/\s\+$//e]]
    vim.fn.winrestview(view)
  end,
})

-- autoresize splits
vim.api.nvim_create_autocmd('VimResized', {
  desc = 'Resize splits when terminal size changes',
  group = vim.api.nvim_create_augroup('resize-splits', { clear = true }),
  callback = function() vim.cmd 'tabdo wincmd =' end,
})
