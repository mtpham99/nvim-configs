--
-- lua/plugins/mini.lua
--

return {
  'nvim-mini/mini.nvim',
  version = '*',
  config = function()
    if vim.g.have_nerd_font then require('mini.icons').setup() end
    local statusline = require 'mini.statusline'
    statusline.setup { use_icons = vim.g.have_nerd_font }
  end,
}
