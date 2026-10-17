--
-- lua/plugins/which-key.lua
--

return {
  'folke/which-key.nvim',
  event = 'VeryLazy',
  opts = {
    delay = 0,
    spec = {
      -- general map groups
      -- map groups for other plugins defined in respective plugin config files
      { '<leader>t', group = '[t]oggle', mode = { 'n', 'v' } },
    },
  },
}
