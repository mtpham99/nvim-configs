--
-- lua/plugins/telescope.lua
--

return {
  'nvim-telescope/telescope.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
  },

  init = function()
    -- which-key mapping
    require('which-key').add { { '<leader>s', group = '[s]earch' } }
  end,

  keys = {
    {
      '<leader>sf',
      '<cmd>Telescope find_files<cr>',
      desc = '[s]earch [f]iles',
    },
    {
      '<leader>sg',
      '<cmd>Telescope live_grep<cr>',
      desc = '[s]earch [g]rep',
    },
    {
      '<leader>sh',
      '<cmd>Telescope help_tags<cr>',
      desc = '[s]earch [h]elp',
    },
  },
  opts = {
    defaults = {
      mappings = {
        i = {
          ['<C-j>'] = 'move_selection_next',
          ['<C-k>'] = 'move_selection_previous',
        },
      },
    },
  },
}
