--
-- lua/plugins/gitsigns.lua
--

return {
  'lewis6991/gitsigns.nvim',
  event = { 'BufReadPre', 'BufNewFile' },
  opts = {
    signs = {
      add = { text = '+' },
      change = { text = '~' },
      delete = { text = '_' },
      topdelete = { text = '‾' },
      changedelete = { text = '~' },
    },
    on_attach = function(buf)
      local gitsigns = require 'gitsigns'

      -- which-key mapping
      require('which-key').add { { '<leader>h', group = 'git [h]unk', buffer = buf } }

      vim.keymap.set('n', ']h', function() gitsigns.nav_hunk 'next' end, { desc = 'next [h]unk', buf = buf })
      vim.keymap.set('n', '[h', function() gitsigns.nav_hunk 'prev' end, { desc = 'prev [h]unk', buf = buf })
      vim.keymap.set('n', '<leader>hs', gitsigns.stage_hunk, { desc = '[h]unk [s]tage', buf = buf })
      vim.keymap.set('n', '<leader>hr', gitsigns.reset_hunk, { desc = '[h]unk [r]eset', buf = buf })
      vim.keymap.set('n', '<leader>hp', gitsigns.preview_hunk, { desc = '[h]unk [p]review', buf = buf })
      vim.keymap.set('n', '<leader>hb', gitsigns.blame_line, { desc = '[h]unk [b]lame', buf = buf })
    end,
  },
}
