--
-- lua/plugins/lsp.lua
--

return {
  {
    'neovim/nvim-lspconfig',
  },

  {
    'mason-org/mason-lspconfig.nvim',
    dependencies = {
      { 'mason-org/mason.nvim', opts = {} },
      'neovim/nvim-lspconfig',
    },
    opts = {
      ensure_installed = {},
    },
  },
}
